// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Meta',
      json,
      ($checkedConvert) {
        final val = Meta(
          dimensions: $checkedConvert(
              'dimensions',
              (v) => v == null
                  ? null
                  : Dimensions.fromJson(v as Map<String, dynamic>)),
          count: $checkedConvert('count', (v) => v as int?),
        );
        return val;
      },
    );
