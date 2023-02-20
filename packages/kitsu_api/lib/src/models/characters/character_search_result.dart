import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/src/models/characters/character.dart';

import '../shared/links.dart';
import '../shared/meta.dart';

part 'character_search_result.g.dart';

@JsonSerializable()
class CharacterSearchResult {
  const CharacterSearchResult({
     this.data,
     this.links,
     this.meta,
  });

  final List<Character>? data;
  final Links? links;
  final Meta? meta;

  factory CharacterSearchResult.fromJson(Map<String, dynamic> json) => _$CharacterSearchResultFromJson(json);
}