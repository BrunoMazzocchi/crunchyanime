import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'characters.g.dart';
@JsonSerializable()
class Characters {
  const Characters({
    this.links,
  });

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
  final Links? links;
}

