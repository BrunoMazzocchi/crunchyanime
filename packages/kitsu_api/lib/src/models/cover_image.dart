import 'package:json_annotation/json_annotation.dart';
import 'meta.dart';
part 'cover_image.g.dart';
@JsonSerializable()
class CoverImage {
  const CoverImage({
    this.tiny,
    this.large,
    this.small,
    this.original,
    this.meta,
  });

  factory CoverImage.fromJson(Map<String, dynamic> json) =>
      _$CoverImageFromJson(json);

  final String? tiny;
  final String? large;
  final String? small;
  final String? original;
  final Meta? meta;
}

