import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';
import 'attributes.dart';
import 'relationships.dart';

part 'category.g.dart';
@JsonSerializable()
class Category {
  final String? id;
  final String? type;
  final Attributes? attributes;
  final Relationships? relationships;
  final Links? links;

  Category({
    this.id,
    this.type,
    this.attributes,
    this.relationships,
    this.links,
  });

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}