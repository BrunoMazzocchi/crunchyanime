part of 'kitsu_anime_bloc.dart';

abstract class KitsuAnimeEvent extends Equatable {

  final String? id;
  const KitsuAnimeEvent({this.id});
  @override
  List<Object> get props => [];
}

class AnimeInformationFetched extends KitsuAnimeEvent {
  const AnimeInformationFetched(String id) : super(id: id);
}
