
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'media_characters.g.dart';

@JsonSerializable()
class MediaCharacters {
  const MediaCharacters({
    this.links,
  });

  factory MediaCharacters.fromJson(Map<String, dynamic> json) =>
      _$MediaCharactersFromJson(json);

  final Links? links;
}