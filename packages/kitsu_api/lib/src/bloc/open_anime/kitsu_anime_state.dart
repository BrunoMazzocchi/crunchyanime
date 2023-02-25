part of 'kitsu_anime_bloc.dart';

enum AnimeInformationState { initial, success, failure}

class KitsuAnimeState extends Equatable {

  const KitsuAnimeState({
    this.characterSearchResult = const CharacterSearchResult(),
    this.animeCategory = const CategorySearchResult(),
    this.status = AnimeInformationState.initial,
  });


  final CharacterSearchResult characterSearchResult;
  final AnimeInformationState status;
  final CategorySearchResult animeCategory;

  KitsuAnimeState copyWith({
    CharacterSearchResult? characterSearchResult,
    AnimeInformationState? status,
    CategorySearchResult? animeCategory,
  }) => KitsuAnimeState(
    characterSearchResult: characterSearchResult ?? this.characterSearchResult,
    status: status ?? this.status,
    animeCategory: animeCategory ?? this.animeCategory,
  );

  @override
  List<Object> get props => [characterSearchResult, animeCategory,  status];

}
