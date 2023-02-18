// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'tiny.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tiny _$TinyFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Tiny',
      json,
      ($checkedConvert) {
        final val = Tiny(
          width: $checkedConvert('width', (v) => v as num?),
          height: $checkedConvert('height', (v) => v as num?),
        );
        return val;
      },
    );
