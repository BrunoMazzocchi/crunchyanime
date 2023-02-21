
import 'package:json_annotation/json_annotation.dart';

import 'character_information.dart';

part 'character_information_result.g.dart';

@JsonSerializable()
class CharacterInformationResult {
  const CharacterInformationResult({
    this.data,
  });

  final CharacterInformation? data;

  factory CharacterInformationResult.fromJson(Map<String, dynamic> json) =>
      _$CharacterInformationResultFromJson(json);


  static final empty = CharacterInformationResult(
    data: CharacterInformation.empty,
  );
}