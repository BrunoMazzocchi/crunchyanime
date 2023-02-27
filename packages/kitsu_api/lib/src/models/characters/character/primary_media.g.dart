// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'primary_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrimaryMedia _$PrimaryMediaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PrimaryMedia',
      json,
      ($checkedConvert) {
        final val = PrimaryMedia(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
