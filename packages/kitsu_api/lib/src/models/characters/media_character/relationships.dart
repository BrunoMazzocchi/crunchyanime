import 'package:json_annotation/json_annotation.dart';
import 'media.dart';
import 'character.dart';
import 'voices.dart';

part 'relationships.g.dart';

@JsonSerializable()
class Relationships {
  final Media? media;
  final Character? character;
  final Voices? voices;

  Relationships({this.media, this.character, this.voices});

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);
}