import 'package:json_annotation/json_annotation.dart';

import '../anime/attributes.dart';
import '../anime/relationships.dart';
import '../shared/links.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final String? id;
  final String? type;
  final Links?  links;
  final Attributes? attributes;
  final Relationships? relationships;

  const Character({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}