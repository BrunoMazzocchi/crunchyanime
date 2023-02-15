// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'streaming_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreamingLinks _$StreamingLinksFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StreamingLinks',
      json,
      ($checkedConvert) {
        final val = StreamingLinks(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
