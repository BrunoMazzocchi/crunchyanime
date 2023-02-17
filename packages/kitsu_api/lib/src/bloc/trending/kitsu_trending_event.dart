part of 'kitsu_trending_bloc.dart';

abstract class KitsuTrendingEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AnimeFetched extends KitsuTrendingEvent {}