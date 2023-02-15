// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mappings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mappings _$MappingsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Mappings',
      json,
      ($checkedConvert) {
        final val = Mappings(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
