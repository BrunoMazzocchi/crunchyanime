import 'package:json_annotation/json_annotation.dart';
part 'small.g.dart';
@JsonSerializable()
class Small {
  const Small({
    this.width,
    this.height,
  });

  factory Small.fromJson(Map<String, dynamic> json) => _$SmallFromJson(json);

  final num? width;
  final num? height;
}
