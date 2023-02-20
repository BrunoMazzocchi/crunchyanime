// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'castings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Castings _$CastingsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Castings',
      json,
      ($checkedConvert) {
        final val = Castings(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
