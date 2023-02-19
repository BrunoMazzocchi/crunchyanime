import 'package:json_annotation/json_annotation.dart';

import 'character_link.dart';
import 'media.dart';
import 'voices.dart';

part 'relationships.g.dart';

@JsonSerializable()
class Relationships {
  final Media? media;
  final CharacterLinks? character;
  final Voices? voices;

  const Relationships({
    this.media,
    this.character,
    this.voices,
  });

  factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);
}
