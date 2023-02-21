import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';
import 'attributes.dart';
import 'relationships.dart';

part 'character_information.g.dart';

@JsonSerializable()
class CharacterInformation {
  const CharacterInformation({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  final String? id;
  final String? type;
  final  Links? links;
  final  Attributes? attributes;
  final Relationships? relationships;

  factory CharacterInformation.fromJson(Map<String, dynamic> json) =>
      _$CharacterInformationFromJson(json);

  static final empty = CharacterInformation(
    id: 'Not found',
    type: 'Not found',
  );
}
