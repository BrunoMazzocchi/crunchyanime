// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Titles _$TitlesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Titles',
      json,
      ($checkedConvert) {
        final val = Titles(
          en: $checkedConvert('en', (v) => v as String?),
          enJp: $checkedConvert('en_jp', (v) => v as String?),
          jaJp: $checkedConvert('ja_jp', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'enJp': 'en_jp', 'jaJp': 'ja_jp'},
    );
