
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  const Attributes({

    this.createdAt,
    this.updatedAt,
    this.slug,
    this.description,
    this.canonicalName,
    this.otherNames,
    this.name,
    this.image,
    this.malId,
});

 final String? createdAt;
  final  String? updatedAt;
  final String? slug;
  final  String? description;
  final  String? canonicalName;
  final  List<String>? otherNames;
  final  String? name;
  final String? image;
  final String? malId;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}