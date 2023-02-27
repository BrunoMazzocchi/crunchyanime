import 'package:json_annotation/json_annotation.dart';
import '../../shared/links.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final Links? links;

  Character({this.links});

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}