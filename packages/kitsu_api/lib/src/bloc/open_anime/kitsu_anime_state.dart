part of 'kitsu_anime_bloc.dart';

enum AnimeInformationState { initial, success, failure}

class KitsuAnimeState extends Equatable {

  const KitsuAnimeState({
    this.animeCategory = const CategorySearchResult(),
    this.status = AnimeInformationState.initial,
    this.mediaCharacterResult = const MediaCharacterResult(),
    this.character = const Character(),

  });


  final AnimeInformationState status;
  final CategorySearchResult animeCategory;
  final MediaCharacterResult mediaCharacterResult; 
  final Character character;

  KitsuAnimeState copyWith({
    AnimeInformationState? status,
    CategorySearchResult? animeCategory,
    MediaCharacterResult? mediaCharacterResult,
    Character? character,
  }) => KitsuAnimeState(
    status: status ?? this.status,
    animeCategory: animeCategory ?? this.animeCategory,
    mediaCharacterResult: mediaCharacterResult ?? this.mediaCharacterResult,
    character: character ?? this.character,
  );

  @override
  List<Object> get props => [animeCategory, character,  status];

}
