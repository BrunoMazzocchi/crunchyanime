// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'cover_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CoverImage',
      json,
      ($checkedConvert) {
        final val = CoverImage(
          tiny: $checkedConvert('tiny', (v) => v as String?),
          large: $checkedConvert('large', (v) => v as String?),
          small: $checkedConvert('small', (v) => v as String?),
          original: $checkedConvert('original', (v) => v as String?),
          meta: $checkedConvert(
              'meta',
              (v) =>
                  v == null ? null : Meta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
