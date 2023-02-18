// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'installments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Installments _$InstallmentsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Installments',
      json,
      ($checkedConvert) {
        final val = Installments(
          links: $checkedConvert(
              'links',
              (v) =>
                  v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
