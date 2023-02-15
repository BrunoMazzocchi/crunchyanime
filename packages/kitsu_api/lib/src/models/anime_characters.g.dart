// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'anime_characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacters _$AnimeCharactersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AnimeCharacters',
      json,
      ($checkedConvert) {
        final val = AnimeCharacters(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
