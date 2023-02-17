
part of 'kitsu_search_api_bloc.dart';


abstract class KitsuSearchApiState extends Equatable {
  const KitsuSearchApiState();

  @override
  List<Object> get props => [];
}



class SearchStateEmpty extends KitsuSearchApiState {}
class SearchStateLoading extends KitsuSearchApiState {}
class SearchStateError extends KitsuSearchApiState {
  const SearchStateError(this.error);

  final String error;  

  @override
  List<Object> get props => [error];
}

class SearchStateSuccess extends KitsuSearchApiState {
  const SearchStateSuccess(this.data);

  final AnimeSearchResult data;

  @override
  List<Object> get props => [data];
}