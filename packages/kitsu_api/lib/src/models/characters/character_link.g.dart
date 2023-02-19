// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'character_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterLinks _$CharacterLinksFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CharacterLinks',
      json,
      ($checkedConvert) {
        final val = CharacterLinks(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
