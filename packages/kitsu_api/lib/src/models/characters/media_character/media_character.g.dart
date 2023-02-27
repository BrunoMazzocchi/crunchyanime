// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'media_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaCharacter _$MediaCharacterFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaCharacter',
      json,
      ($checkedConvert) {
        final val = MediaCharacter(
          id: $checkedConvert('id', (v) => v as String?),
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
          attributes: $checkedConvert(
              'attributes',
              (v) => v == null
                  ? null
                  : Attributes.fromJson(v as Map<String, dynamic>)),
          voices: $checkedConvert(
              'voices',
              (v) => v == null
                  ? null
                  : Voices.fromJson(v as Map<String, dynamic>)),
          media: $checkedConvert(
              'media',
              (v) =>
                  v == null ? null : Media.fromJson(v as Map<String, dynamic>)),
          character: $checkedConvert(
              'character',
              (v) => v == null
                  ? null
                  : Character.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
