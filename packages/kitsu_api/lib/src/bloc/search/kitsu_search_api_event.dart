part of 'kitsu_search_api_bloc.dart';

abstract class KitsuSearchApiEvent extends Equatable {
  const KitsuSearchApiEvent();
}

class TextChanged extends KitsuSearchApiEvent {
  const TextChanged({required this.text});

  final String text;

  @override
  List<Object> get props => [text];

  @override
  String toString() => 'TextChanged { text: $text }';
}