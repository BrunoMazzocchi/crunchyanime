part of 'kitsu_home_bloc.dart';

abstract class KitsuHomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AnimeFetched extends KitsuHomeEvent {}