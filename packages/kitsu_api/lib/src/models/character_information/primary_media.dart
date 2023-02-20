
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'primary_media.g.dart';

@JsonSerializable()
class PrimaryMedia {
  const PrimaryMedia({
    this.links,
  });

  factory PrimaryMedia.fromJson(Map<String, dynamic> json) =>
      _$PrimaryMediaFromJson(json);

  final Links? links;
}