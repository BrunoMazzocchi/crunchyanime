import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/src/models/shared/links.dart';

part 'attributes.g.dart';
@JsonSerializable()
class Attributes {
  final String? createdAt;
  final String? updatedAt;
  final String? title;
  final String? description;
  final num? totalMediaCount;
  final String? slug;
  final bool? nsfw;
  final num? childCount;

  const Attributes({
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.totalMediaCount,
    this.slug,
    this.nsfw,
    this.childCount,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

}