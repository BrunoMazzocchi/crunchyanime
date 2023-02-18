import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'anime_productions.g.dart';
@JsonSerializable()
class AnimeProductions {
  const AnimeProductions({
    this.links,
  });

  factory AnimeProductions.fromJson(Map<String, dynamic> json) =>
      _$AnimeProductionsFromJson(json);
  final Links? links;
}

