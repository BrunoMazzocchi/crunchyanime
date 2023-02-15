// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'anime_productions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeProductions _$AnimeProductionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AnimeProductions',
      json,
      ($checkedConvert) {
        final val = AnimeProductions(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
