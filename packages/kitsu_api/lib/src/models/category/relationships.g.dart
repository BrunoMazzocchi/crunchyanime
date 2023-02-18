// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Relationships',
      json,
      ($checkedConvert) {
        final val = Relationships(
          parent: $checkedConvert(
              'parent',
              (v) => v == null
                  ? null
                  : Parent.fromJson(v as Map<String, dynamic>)),
          anime: $checkedConvert(
              'anime',
              (v) =>
                  v == null ? null : Anime.fromJson(v as Map<String, dynamic>)),
          drama: $checkedConvert(
              'drama',
              (v) =>
                  v == null ? null : Drama.fromJson(v as Map<String, dynamic>)),
          manga: $checkedConvert(
              'manga',
              (v) =>
                  v == null ? null : Manga.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
