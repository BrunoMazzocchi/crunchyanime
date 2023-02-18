import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'castings.g.dart';
@JsonSerializable()
class Castings {
  const Castings({
    this.links,
  });

  factory Castings.fromJson(Map<String, dynamic> json) =>
      _$CastingsFromJson(json);

  final Links? links;
}

