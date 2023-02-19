
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'character_link.g.dart';

@JsonSerializable()
class CharacterLinks {
  final Links? links;

  const CharacterLinks({
    this.links,
  });

  factory CharacterLinks.fromJson(Map<String, dynamic> json) => _$CharacterLinksFromJson(json);
}