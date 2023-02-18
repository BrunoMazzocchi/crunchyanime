// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'drama.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drama _$DramaFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Drama',
      json,
      ($checkedConvert) {
        final val = Drama(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
