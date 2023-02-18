import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'productions.g.dart';
@JsonSerializable()
class Productions {
  const Productions({
    this.links,
  });

  factory Productions.fromJson(Map<String, dynamic> json) =>
      _$ProductionsFromJson(json);

  final Links? links;
}

