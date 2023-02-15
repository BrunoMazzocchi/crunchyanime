
part of 'kitsu_api_bloc_bloc.dart';

abstract class KitsuApiBlocState extends Equatable {
  const KitsuApiBlocState();

  @override
  List<Object> get props => [];
}



class SearchStateEmpty extends KitsuApiBlocState {}
class SearchStateLoading extends KitsuApiBlocState {}
class SearchStateError extends KitsuApiBlocState {
  const SearchStateError(this.error);

  final String error;  

  @override
  List<Object> get props => [error];
}

class SearchStateSuccess extends KitsuApiBlocState { 
  const SearchStateSuccess(this.data);

  final AnimeSearchResult data;

  @override
  List<Object> get props => [data];
}