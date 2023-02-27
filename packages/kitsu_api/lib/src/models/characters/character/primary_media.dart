import '../../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';

part 'primary_media.g.dart';

@JsonSerializable()
class PrimaryMedia {
  final Links? links;

  PrimaryMedia({this.links});

  factory PrimaryMedia.fromJson(Map<String, dynamic> json) =>
      _$PrimaryMediaFromJson(json);
}