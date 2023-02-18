import 'package:json_annotation/json_annotation.dart';
part 'large.g.dart';
@JsonSerializable()
class Large {
  const Large({
    this.width,
    this.height,
  });
  
  factory Large.fromJson(Map<String, dynamic> json) => _$LargeFromJson(json);
  final num? width;
  final num? height;
}