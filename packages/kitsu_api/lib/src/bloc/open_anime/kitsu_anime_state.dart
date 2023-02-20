part of 'kitsu_anime_bloc.dart';

enum AnimeInformationState { initial, success, failure}

class KitsuAnimeState extends Equatable {

  const KitsuAnimeState({
    this.characterSearchResult = const CharacterSearchResult(),
    this.characterInformation = const <CharacterInformation> [],
    this.animeCategory = const CategorySearchResult(),
    this.status = AnimeInformationState.initial,
  });


  final CharacterSearchResult characterSearchResult;
  final List<CharacterInformation> characterInformation;
  final AnimeInformationState status;
  final CategorySearchResult animeCategory;

  KitsuAnimeState copyWith({
    CharacterSearchResult? characterSearchResult,
    AnimeInformationState? status,
    List<CharacterInformation>? characterInformation,
    CategorySearchResult? animeCategory,
  }) => KitsuAnimeState(
    characterSearchResult: characterSearchResult ?? this.characterSearchResult,
    status: status ?? this.status,
    characterInformation: characterInformation ?? this.characterInformation,
    animeCategory: animeCategory ?? this.animeCategory,
  );

  @override
  // TODO: implement props
  List<Object> get props => [characterSearchResult, characterInformation, animeCategory, status];

}
