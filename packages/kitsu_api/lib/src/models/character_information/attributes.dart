
import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'names.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  const Attributes({

    this.createdAt,
    this.updatedAt,
    this.slug,
    this.description,
    this.canonicalName,
    this.name,
    this.malId,
    this.names,
    this.image,
    this.otherNames = const [],

});

  final String? createdAt;
  final String? updatedAt;
  final String? slug;
  final Names? names;
  final String? canonicalName;
  final String? name;
  final num? malId;
  final String? description;
  final Image? image;
  final List<Object> otherNames;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}



