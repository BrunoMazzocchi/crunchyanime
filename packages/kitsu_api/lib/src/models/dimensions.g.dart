// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'dimensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Dimensions',
      json,
      ($checkedConvert) {
        final val = Dimensions(
          tiny: $checkedConvert(
              'tiny',
              (v) =>
                  v == null ? null : Tiny.fromJson(v as Map<String, dynamic>)),
          large: $checkedConvert(
              'large',
              (v) =>
                  v == null ? null : Large.fromJson(v as Map<String, dynamic>)),
          small: $checkedConvert(
              'small',
              (v) =>
                  v == null ? null : Small.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
