// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Category',
      json,
      ($checkedConvert) {
        final val = Category(
          id: $checkedConvert('id', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
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
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
