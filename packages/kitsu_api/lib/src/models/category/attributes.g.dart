// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Attributes',
      json,
      ($checkedConvert) {
        final val = Attributes(
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          totalMediaCount: $checkedConvert('totalMediaCount', (v) => v as num?),
          slug: $checkedConvert('slug', (v) => v as String?),
          nsfw: $checkedConvert('nsfw', (v) => v as bool?),
          childCount: $checkedConvert('childCount', (v) => v as num?),
        );
        return val;
      },
    );
