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
          primaryMedia: $checkedConvert(
              'primaryMedia',
              (v) => v == null
                  ? null
                  : PrimaryMedia.fromJson(v as Map<String, dynamic>)),
          castings: $checkedConvert(
              'castings',
              (v) => v == null
                  ? null
                  : Castings.fromJson(v as Map<String, dynamic>)),
          mediaCharacters: $checkedConvert(
              'mediaCharacters',
              (v) => v == null
                  ? null
                  : MediaCharacters.fromJson(v as Map<String, dynamic>)),
          quotes: $checkedConvert(
              'quotes',
              (v) => v == null
                  ? null
                  : Quotes.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
