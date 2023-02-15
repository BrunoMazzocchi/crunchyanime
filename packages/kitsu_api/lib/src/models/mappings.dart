import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'mappings.g.dart';
@JsonSerializable()
class Mappings {
  const Mappings({
    this.links,
  });

  factory Mappings.fromJson(Map<String, dynamic> json) =>
      _$MappingsFromJson(json);

  final Links? links;
}
