// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'anime_staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeStaff _$AnimeStaffFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AnimeStaff',
      json,
      ($checkedConvert) {
        final val = AnimeStaff(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
