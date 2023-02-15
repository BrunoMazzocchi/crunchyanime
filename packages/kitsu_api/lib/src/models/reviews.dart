import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reviews.g.dart';
@JsonSerializable()
class Reviews {
  const Reviews({
    this.links,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);

  final Links? links;
}

