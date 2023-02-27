import 'package:json_annotation/json_annotation.dart';
import '../../shared/links.dart';
import '../../shared/meta.dart';
import  'media_character.dart' ;
part 'media_character_result.g.dart';

@JsonSerializable()
class MediaCharacterResult {
  final Links? links;
  final Meta? meta;
  final List<MediaCharacter>? data;

  const MediaCharacterResult({this.links, this.meta, this.data});

  factory MediaCharacterResult.fromJson(Map<String, dynamic> json) =>
      _$MediaCharacterResultFromJson(json);
}