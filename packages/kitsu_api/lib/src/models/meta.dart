import 'package:json_annotation/json_annotation.dart';
import 'dimensions.dart';
part 'meta.g.dart';
@JsonSerializable()
class Meta {
  const Meta({
    this.dimensions,
    this.count, 
  });

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);

  final Dimensions? dimensions;
  final int? count; 
}
