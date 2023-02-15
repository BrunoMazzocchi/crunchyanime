import 'package:json_annotation/json_annotation.dart';
import 'anime_characters.dart';
import 'anime_productions.dart';
import 'anime_staff.dart';
import 'categories.dart';
import 'characters.dart';
import 'castings.dart';
import 'episodes.dart';
import 'genres.dart';
import 'installments.dart';
import 'mappings.dart';
import 'media_relationships.dart';
import 'productions.dart';
import 'quotes.dart';
import 'reviews.dart';
import 'staff.dart';
import 'streaming_links.dart';

part 'relationships.g.dart';

@JsonSerializable()
class Relationships {
  const Relationships({
    this.genres,
    this.categories,
    this.castings,
    this.installments,
    this.mappings,
    this.reviews,
    this.mediaRelationships,
    this.characters,
    this.staff,
    this.productions,
    this.quotes,
    this.episodes,
    this.streamingLinks,
    this.animeProductions,
    this.animeCharacters,
    this.animeStaff,
  });
  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);

  final Genres? genres;
  final Categories? categories;
  final Castings? castings;
  final Installments? installments;
  final Mappings? mappings;
  final Reviews? reviews;
  final MediaRelationships? mediaRelationships;
  final Characters? characters;
  final Staff? staff;
  final Productions? productions;
  final Quotes? quotes;
  final Episodes? episodes;
  final StreamingLinks? streamingLinks;
  final AnimeProductions? animeProductions;
  final AnimeCharacters? animeCharacters;
  final AnimeStaff? animeStaff;
}



