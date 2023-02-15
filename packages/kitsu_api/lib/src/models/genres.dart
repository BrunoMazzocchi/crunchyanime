
import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'genres.g.dart';
@JsonSerializable()
class Genres {
  const Genres({
    this.links,
  });

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  final Links? links;
}
