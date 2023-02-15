// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'anime_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSearchResult _$AnimeSearchResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AnimeSearchResult',
      json,
      ($checkedConvert) {
        final val = AnimeSearchResult(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
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
