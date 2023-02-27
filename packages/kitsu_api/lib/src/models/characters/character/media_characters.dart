import '../../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_characters.g.dart';

@JsonSerializable()
class MediaCharacters {
  final Links? links;

  MediaCharacters({this.links});

  factory MediaCharacters.fromJson(Map<String, dynamic> json) =>
      _$MediaCharactersFromJson(json);
}