import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';
import '../shared/meta.dart';
import 'category.dart';

part 'category_search_result.g.dart';

@JsonSerializable()
class CategorySearchResult {
  const CategorySearchResult({
    this.data,
    this.meta,
    this.links,
  });

  factory CategorySearchResult.fromJson(Map<String, dynamic> json) =>
      _$CategorySearchResultFromJson(json);

  final List<Category>? data;
  final Meta? meta;
  final Links? links;
}