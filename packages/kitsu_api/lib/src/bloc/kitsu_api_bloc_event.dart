part of 'kitsu_api_bloc_bloc.dart';

abstract class KitsuApiBlocEvent extends Equatable {
  const KitsuApiBlocEvent();
}

class TextChanged extends KitsuApiBlocEvent {
  const TextChanged(this.text);

  final String text;

  @override
  List<Object> get props => [text];

  @override
  String toString() => 'TextChanged { text: $text }';
}