import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'media_relationships.g.dart';
@JsonSerializable()
class MediaRelationships {
  const MediaRelationships({
    this.links,
  });


  factory MediaRelationships.fromJson(Map<String, dynamic> json) =>
      _$MediaRelationshipsFromJson(json);
  final Links? links;
}

