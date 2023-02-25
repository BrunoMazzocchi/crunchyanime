// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Image',
      json,
      ($checkedConvert) {
        final val = Image(
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
