import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'episodes.g.dart';
@JsonSerializable()
class Episodes {
  const Episodes({
    this.links,
  });


  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
  final Links? links;
}
