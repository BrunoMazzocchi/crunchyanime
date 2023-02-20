import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kitsu_api/src/models/characters/character_search_result.dart';

import '../../../kitsu_api.dart';
import '../../constants.dart';

part 'kitsu_anime_event.dart';

part 'kitsu_anime_state.dart';

class KitsuAnimeBloc extends Bloc<KitsuAnimeEvent, KitsuAnimeState> {
  KitsuAnimeBloc({
   required this.kitsuRepository,

  }) : super(const KitsuAnimeState()) {
    on<AnimeInformationFetched>(_onAnimeOpen,
        transformer: throttleDroppable(throttleDuration));
  }

  final KitsuRepository kitsuRepository;
  Future<void> _onAnimeOpen(AnimeInformationFetched event,
      Emitter<KitsuAnimeState> emit) async {
    try {
      if (state.status == AnimeInformationState.initial) {
        final characterSearchResult = await kitsuRepository.getCharacters(event.id ?? "");
        final animeCategory = await kitsuRepository.getAnimeCategories(event.id ?? "");

        print("event id: ${event.id}");
        return emit(state.copyWith(
          status: AnimeInformationState.success,
          animeCategory: animeCategory,
          characterSearchResult: characterSearchResult,
        ));
      }
    } catch (_) {
      emit(state.copyWith(status: AnimeInformationState.failure));
    }
  }

}