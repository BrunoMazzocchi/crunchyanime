import 'package:json_annotation/json_annotation.dart';
import 'attributes.dart';
import 'relationships.dart';
import 'links.dart';
part 'anime.g.dart';

@JsonSerializable()
class Anime {
  const Anime({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  final String? id;
  final String? type;
  final Links? links;
  final Attributes? attributes;
  final Relationships? relationships;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
}

