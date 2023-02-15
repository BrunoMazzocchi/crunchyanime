import 'package:json_annotation/json_annotation.dart';
import 'large.dart';
import 'small.dart';
import 'tiny.dart';
part 'dimensions.g.dart';
@JsonSerializable()
class Dimensions {
  const Dimensions({
    this.tiny,
    this.large,
    this.small,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
  final Tiny? tiny;
  final Large? large;
  final Small? small;
}

