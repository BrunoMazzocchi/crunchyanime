part of 'kitsu_anime_bloc.dart';

abstract class KitsuAnimeEvent extends Equatable {
  const KitsuAnimeEvent();

  @override
  List<Object> get props => [];
}

class AnimeInformationFetched extends KitsuAnimeEvent {
}
