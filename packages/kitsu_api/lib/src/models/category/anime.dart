
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime {
  final Links? links;

  const Anime({
    this.links,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
}