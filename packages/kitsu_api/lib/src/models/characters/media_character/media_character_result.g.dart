// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'media_character_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaCharacterResult _$MediaCharacterResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaCharacterResult',
      json,
      ($checkedConvert) {
        final val = MediaCharacterResult(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
          meta: $checkedConvert(
              'meta',
              (v) =>
                  v == null ? null : Meta.fromJson(v as Map<String, dynamic>)),
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => MediaCharacter.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );
