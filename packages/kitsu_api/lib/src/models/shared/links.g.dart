// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Links',
      json,
      ($checkedConvert) {
        final val = Links(
          self: $checkedConvert('self', (v) => v as String?),
          related: $checkedConvert('related', (v) => v as String?),
          first: $checkedConvert('first', (v) => v as String?),
          next: $checkedConvert('next', (v) => v as String?),
          last: $checkedConvert('last', (v) => v as String?),
          prev: $checkedConvert('prev', (v) => v as String?),
        );
        return val;
      },
    );
