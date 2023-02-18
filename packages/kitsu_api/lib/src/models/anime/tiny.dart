import 'package:json_annotation/json_annotation.dart';
part 'tiny.g.dart';
@JsonSerializable()
class Tiny {
  const Tiny({
    this.width,
    this.height,
  });

  factory Tiny.fromJson(Map<String, dynamic> json) => _$TinyFromJson(json);
  final num? width;
  final num? height;
}