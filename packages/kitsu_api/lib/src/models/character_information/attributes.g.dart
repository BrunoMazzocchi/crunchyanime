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
          slug: $checkedConvert('slug', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          canonicalName: $checkedConvert('canonicalName', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          malId: $checkedConvert('malId', (v) => v as num?),
          names: $checkedConvert(
              'names',
              (v) =>
                  v == null ? null : Names.fromJson(v as Map<String, dynamic>)),
          image: $checkedConvert(
              'image',
              (v) =>
                  v == null ? null : Image.fromJson(v as Map<String, dynamic>)),
          otherNames: $checkedConvert(
              'otherNames',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as Object).toList() ??
                  const []),
        );
        return val;
      },
    );
