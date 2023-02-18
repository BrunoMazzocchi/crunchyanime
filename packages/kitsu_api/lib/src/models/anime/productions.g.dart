// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'productions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Productions _$ProductionsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Productions',
      json,
      ($checkedConvert) {
        final val = Productions(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
