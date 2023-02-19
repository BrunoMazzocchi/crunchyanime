part of 'kitsu_home_bloc.dart';

enum AnimeStatus { initial, success, failure}

class KitsuHomeState extends Equatable {
  const KitsuHomeState({
    this.status = AnimeStatus.initial,
    this.trendingAnime = const <Anime>[],
    this.firstTopCategory = const <Anime>[],
    this.secondTopCategory = const <Anime>[],
    this.thirdTopCategory = const <Anime>[],
    this.fourthTopCategory = const <Anime>[],
  });

  final AnimeStatus status;
  final List<Anime> trendingAnime;
  final List<Anime> firstTopCategory;
  final List<Anime> secondTopCategory;
  final List<Anime> thirdTopCategory;
  final List<Anime> fourthTopCategory;

  KitsuHomeState copyWith({
    AnimeStatus? status,
    List<Anime>? trendingAnime,
    List<Anime>? firstTopCategory,
    List<Anime>? secondTopCategory,
    List<Anime>? thirdTopCategory,
    List<Anime>? fourthTopCategory,
  }) {
    return KitsuHomeState(
      status: status ?? this.status,
      trendingAnime: trendingAnime ?? this.trendingAnime,
      firstTopCategory: firstTopCategory ?? this.firstTopCategory,
      secondTopCategory: secondTopCategory ?? this.secondTopCategory,
      thirdTopCategory: thirdTopCategory ?? this.thirdTopCategory,
      fourthTopCategory: fourthTopCategory ?? this.fourthTopCategory,
    );
  }

  @override
  String toString() {
    return '''KitsuState { status: $status, anime: ${trendingAnime.length} }''';
  }

  @override
  List<Object> get props => [status, trendingAnime, firstTopCategory, secondTopCategory, thirdTopCategory, fourthTopCategory];
}
