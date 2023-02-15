import 'package:json_annotation/json_annotation.dart';
part 'titles.g.dart';
@JsonSerializable()
class Titles {
  const Titles({
    this.en,
    this.enJp,
    this.jaJp,
  });

  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);

  final String? en;
  final String? enJp;
  final String? jaJp;
}