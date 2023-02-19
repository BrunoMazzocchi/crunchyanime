// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'category_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySearchResult _$CategorySearchResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CategorySearchResult',
      json,
      ($checkedConvert) {
        final val = CategorySearchResult(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
                  .toList()),
          meta: $checkedConvert(
              'meta',
              (v) =>
                  v == null ? null : Meta.fromJson(v as Map<String, dynamic>)),
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
