import 'package:kitsu_api/src/models/shared/castings.dart';
import 'package:kitsu_api/src/models/shared/quotes.dart';

import 'package:json_annotation/json_annotation.dart';
import   'media_characters.dart';
import 'primary_media.dart';
part 'relationships.g.dart';

@JsonSerializable()
class Relationships{
  final PrimaryMedia? primaryMedia;
  final Castings? castings;
  final MediaCharacters?  mediaCharacters; 
  final Quotes? quotes;

  Relationships({this.primaryMedia, this.castings, this.mediaCharacters, this.quotes});

  factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);
}