// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'character_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterSearchResult _$CharacterSearchResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CharacterSearchResult',
      json,
      ($checkedConvert) {
        final val = CharacterSearchResult(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
                  .toList()),
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
          meta: $checkedConvert(
              'meta',
              (v) =>
                  v == null ? null : Meta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
