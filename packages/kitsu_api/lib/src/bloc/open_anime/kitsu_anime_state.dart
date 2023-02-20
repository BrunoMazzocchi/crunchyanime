part of 'kitsu_anime_bloc.dart';

enum AnimeInformationState { initial, success, failure}

class KitsuAnimeState extends Equatable {

  const KitsuAnimeState({
    this.characterSearchResult = const CharacterSearchResult(),
    this.status = AnimeInformationState.initial,
  });


  final CharacterSearchResult characterSearchResult;
  final AnimeInformationState status;


  KitsuAnimeState copyWith({
    CharacterSearchResult? characterSearchResult,
    AnimeInformationState? status,
  }) => KitsuAnimeState(
    characterSearchResult: characterSearchResult ?? this.characterSearchResult,
    status: status ?? this.status,
  );

  @override
  // TODO: implement props
  List<Object> get props => [characterSearchResult, status];

}
