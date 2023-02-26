part of 'kitsu_anime_bloc.dart';

enum AnimeInformationState { initial, success, failure}

class KitsuAnimeState extends Equatable {

  const KitsuAnimeState({
    this.characterSearchResult = const CharacterSearchResult(),
    this.animeCategory = const CategorySearchResult(),
    this.status = AnimeInformationState.initial,
    this.characterInformation = const <CharacterInformation>[]
  });


  final CharacterSearchResult characterSearchResult;
  final AnimeInformationState status;
  final CategorySearchResult animeCategory;
  final List<CharacterInformation>? characterInformation;
  KitsuAnimeState copyWith({
    CharacterSearchResult? characterSearchResult,
    AnimeInformationState? status,
    CategorySearchResult? animeCategory,
    List<CharacterInformation>? characterInformation,
  }) => KitsuAnimeState(
    characterSearchResult: characterSearchResult ?? this.characterSearchResult,
    status: status ?? this.status,
    animeCategory: animeCategory ?? this.animeCategory,
    characterInformation: characterInformation ?? this.characterInformation,
  );

  @override
  List<Object> get props => [characterSearchResult, animeCategory,  status];

}
