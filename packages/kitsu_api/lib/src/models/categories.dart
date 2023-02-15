import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'categories.g.dart';
@JsonSerializable()
class Categories {
  const Categories({
    this.links,
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  final Links? links;
}

