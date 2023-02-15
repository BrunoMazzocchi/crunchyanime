// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'small.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Small _$SmallFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Small',
      json,
      ($checkedConvert) {
        final val = Small(
          width: $checkedConvert('width', (v) => v as num?),
          height: $checkedConvert('height', (v) => v as num?),
        );
        return val;
      },
    );
