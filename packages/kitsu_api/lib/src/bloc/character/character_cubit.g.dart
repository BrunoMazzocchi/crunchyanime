// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'character_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterState _$CharacterStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CharacterState',
      json,
      ($checkedConvert) {
        final val = CharacterState(
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$CharacterStatusEnumMap, v) ??
                  CharacterStatus.initial),
          characterInformationResult: $checkedConvert(
              'characterInformationResult',
              (v) => v == null
                  ? null
                  : CharacterInformationResult.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

const _$CharacterStatusEnumMap = {
  CharacterStatus.initial: 'initial',
  CharacterStatus.loading: 'loading',
  CharacterStatus.loaded: 'loaded',
  CharacterStatus.error: 'error',
};
