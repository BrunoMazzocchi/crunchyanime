// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'quotes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quotes _$QuotesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Quotes',
      json,
      ($checkedConvert) {
        final val = Quotes(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
