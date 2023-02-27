import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/src/models/shared/meta.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  final String? original;
  final String? large;
  final String? medium;
  final String? small;
  final String? tiny;
  final Meta? meta;

  Image({this.original, this.large, this.medium, this.small, this.tiny, this.meta});
  
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}