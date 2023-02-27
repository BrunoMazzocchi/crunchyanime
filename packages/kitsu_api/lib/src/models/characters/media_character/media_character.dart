import 'package:json_annotation/json_annotation.dart';
import '../../shared/links.dart';
import 'attributes.dart';
import 'character.dart';
import 'media.dart';
import 'voices.dart';

part 'media_character.g.dart';

@JsonSerializable()
class MediaCharacter {
  final String? id;
  final Links? links;
  final Attributes? attributes;
  final Voices? voices;
  final Media? media;
  final Character? character;

  const MediaCharacter({this.id, this.links, this.attributes, this.voices, this.media, this.character});

  factory MediaCharacter.fromJson(Map<String, dynamic> json) => _$MediaCharacterFromJson(json);
}