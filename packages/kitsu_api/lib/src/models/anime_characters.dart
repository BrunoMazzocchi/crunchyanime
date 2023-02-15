import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'anime_characters.g.dart';
@JsonSerializable()
class AnimeCharacters {
  const AnimeCharacters({
    this.links,
  });

  factory AnimeCharacters.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharactersFromJson(json);

  final Links? links;
}


