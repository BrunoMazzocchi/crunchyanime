import 'package:json_annotation/json_annotation.dart';

import 'anime.dart';
import 'drama.dart';
import 'manga.dart';
import 'parent.dart';

part 'relationships.g.dart';
@JsonSerializable()
class Relationships{
  final Parent? parent;
  final Anime? anime;
  final Drama? drama;
  final Manga? manga;

  Relationships({
    this.parent,
    this.anime,
    this.drama,
    this.manga,
  });

  factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);
}