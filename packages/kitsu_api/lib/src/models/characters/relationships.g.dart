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
          media: $checkedConvert(
              'media',
              (v) =>
                  v == null ? null : Media.fromJson(v as Map<String, dynamic>)),
          character: $checkedConvert(
              'character',
              (v) => v == null
                  ? null
                  : CharacterLinks.fromJson(v as Map<String, dynamic>)),
          voices: $checkedConvert(
              'voices',
              (v) => v == null
                  ? null
                  : Voices.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
