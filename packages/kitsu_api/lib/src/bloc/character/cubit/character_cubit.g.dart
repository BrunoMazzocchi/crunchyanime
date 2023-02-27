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
          character: $checkedConvert(
              'character',
              (v) => v == null
                  ? const Character()
                  : Character.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$CharacterstatusEnumMap, v) ??
                  Characterstatus.initial),
        );
        return val;
      },
    );

const _$CharacterstatusEnumMap = {
  Characterstatus.initial: 'initial',
  Characterstatus.loading: 'loading',
  Characterstatus.success: 'success',
  Characterstatus.failure: 'failure',
};
