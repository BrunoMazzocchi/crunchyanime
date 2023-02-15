// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Anime',
      json,
      ($checkedConvert) {
        final val = Anime(
          id: $checkedConvert('id', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
          attributes: $checkedConvert(
              'attributes',
              (v) => v == null
                  ? null
                  : Attributes.fromJson(v as Map<String, dynamic>)),
          relationships: $checkedConvert(
              'relationships',
              (v) => v == null
                  ? null
                  : Relationships.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
