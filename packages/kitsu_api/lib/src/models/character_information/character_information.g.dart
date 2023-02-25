// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'character_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterInformation _$CharacterInformationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CharacterInformation',
      json,
      ($checkedConvert) {
        final val = CharacterInformation(
          id: $checkedConvert('id', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
          attributes: $checkedConvert(
              'attributes',
              (v) => v == null
                  ? null
                  : Attributes.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
