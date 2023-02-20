import 'package:json_annotation/json_annotation.dart';

import '../shared/castings.dart';
import '../shared/quotes.dart';
import 'media_characters.dart';
import 'primary_media.dart';

part 'relationships.g.dart';

@JsonSerializable()
class Relationships{
 const  Relationships({
    this.primaryMedia,
    this.castings,
    this.mediaCharacters,
    this.quotes,});

  final PrimaryMedia? primaryMedia;
  final Castings? castings;
  final  MediaCharacters? mediaCharacters;
  final  Quotes? quotes;

  factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);
}



