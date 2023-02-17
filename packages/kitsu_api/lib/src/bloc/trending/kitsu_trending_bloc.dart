import 'dart:convert';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';

import '../../../kitsu_api.dart';

part 'kitsu_trending_event.dart';

part 'kitsu_trending_state.dart';

const _postLimit = 10;

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class KitsuTrendingBloc extends Bloc<KitsuTrendingEvent, KitsuTrendingState> {
  KitsuTrendingBloc({required this.httpClient})
      : super(const KitsuTrendingState()) {

    on<AnimeFetched>(_onAnimeFetched,
        transformer: throttleDroppable(throttleDuration));
  }


  Future<void> _onAnimeFetched(
      AnimeFetched event, Emitter<KitsuTrendingState> emit) async {
    if (state.hasReachedMax) return;
    try {

      if (state.status == AnimeStatus.initial) {
        final anime = await _fetchAnime();
        return emit(state.copyWith(
          status: AnimeStatus.success,
          anime: anime,
          hasReachedMax: false,
        ));
      }
      final anime = await _fetchAnime(state.anime.length);
      emit(anime.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: AnimeStatus.success,
              anime: List.of(state.anime)..addAll(anime),
              hasReachedMax: false,
            ));
    } catch (_) {
      emit(state.copyWith(status: AnimeStatus.failure));
    }
  }

  Future<List<Anime>> _fetchAnime([int startIndex = 0]) async {
    final response = await httpClient.get(
      Uri.https(
        'kitsu.io',
        '/api/edge/trending/anime',
        <String, String>{
          'page[limit]': '$_postLimit',
          'page[offset]': '$startIndex',
        },
      ),
    );

    if(response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as List;
      return data.map((dynamic json) => Anime.fromJson(json)).toList();
    } else {
      throw Exception('error fetching anime');
    }


  }

  final http.Client httpClient;
}
