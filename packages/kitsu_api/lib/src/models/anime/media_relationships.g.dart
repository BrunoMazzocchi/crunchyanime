// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'media_relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaRelationships _$MediaRelationshipsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaRelationships',
      json,
      ($checkedConvert) {
        final val = MediaRelationships(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
