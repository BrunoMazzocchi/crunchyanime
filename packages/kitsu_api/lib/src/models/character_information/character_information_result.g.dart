// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'character_information_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterInformationResult _$CharacterInformationResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CharacterInformationResult',
      json,
      ($checkedConvert) {
        final val = CharacterInformationResult(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CharacterInformation.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
