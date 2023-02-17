part of 'kitsu_trending_bloc.dart';

enum AnimeStatus { initial, success, failure }

class KitsuTrendingState extends Equatable {
  const KitsuTrendingState({
    this.status = AnimeStatus.initial,
    this.anime = const <Anime>[],
    this.hasReachedMax = false,
  });



  final AnimeStatus status;
  final List<Anime> anime;
  final bool hasReachedMax;

  KitsuTrendingState copyWith(
      {AnimeStatus? status, List<Anime>? anime, bool? hasReachedMax}) {

    return KitsuTrendingState(
      status: status ?? this.status,
      anime: anime ?? this.anime,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''KitsuState { status: $status, hasReachedMax: $hasReachedMax, posts: ${anime.length} }''';
  }

  @override
  List<Object> get props => [status, anime, hasReachedMax];
}
