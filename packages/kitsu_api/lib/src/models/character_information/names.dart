import 'package:json_annotation/json_annotation.dart';

part 'names.g.dart';
@JsonSerializable()
class Names {
  const Names({
    this.en,
    this.enJp,
    this.jaJp,
  });

  final String? en;
  final String? enJp;
  final String? jaJp;

  factory Names.fromJson(Map<String, dynamic> json) =>
      _$NamesFromJson(json);
}