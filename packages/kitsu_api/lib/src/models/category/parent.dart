
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'parent.g.dart';
@JsonSerializable()
class Parent {
  final Links? links;

  Parent({
    this.links,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}