
import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/src/models/shared/meta.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  const Image({
    this.tiny,
    this.large,
    this.small,
    this.original,
    this.meta,
  });

  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);

  final String? tiny;
  final String? large;
  final String? small;
  final String? original;
  final Meta? meta;
}