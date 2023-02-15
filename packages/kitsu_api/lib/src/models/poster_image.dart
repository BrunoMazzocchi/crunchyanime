import 'package:json_annotation/json_annotation.dart';
import 'meta.dart';
part 'poster_image.g.dart';
@JsonSerializable()
class PosterImage {
  const PosterImage({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });

  factory PosterImage.fromJson(Map<String, dynamic> json) =>
      _$PosterImageFromJson(json);

  final String? tiny;
  final String? large;
  final String? small;
  final String? medium;
  final String? original;
  final Meta? meta;
}
