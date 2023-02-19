import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'media.g.dart';

@JsonSerializable()
class Media {
  final Links? links;

  const Media({
    this.links,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

}