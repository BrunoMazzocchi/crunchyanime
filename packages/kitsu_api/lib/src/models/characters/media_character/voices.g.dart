// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'voices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Voices _$VoicesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Voices',
      json,
      ($checkedConvert) {
        final val = Voices(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
