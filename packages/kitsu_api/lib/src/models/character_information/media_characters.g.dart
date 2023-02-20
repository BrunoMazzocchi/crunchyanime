// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'media_characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaCharacters _$MediaCharactersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaCharacters',
      json,
      ($checkedConvert) {
        final val = MediaCharacters(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
