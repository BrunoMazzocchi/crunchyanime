import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime {
  const Anime({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  final String? id;
  final String? type;
  final Links? links;
  final Attributes? attributes;
  final Relationships? relationships;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

}

class Attributes {
  const Attributes({
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.synopsis,
    this.description,
    this.coverImageTopOffset,
    this.titles,
    this.canonicalTitle,
    this.abbreviatedTitles,
    this.averageRating,
    this.ratingFrequencies,
    this.userCount,
    this.favoritesCount,
    this.startDate,
    this.endDate,
    this.nextRelease,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    this.subtype,
    this.status,
    this.tba,
    this.posterImage,
    this.coverImage,
    this.episodeCount,
    this.episodeLength,
    this.totalLength,
    this.youtubeVideoId,
    this.showType,
    this.nsfw,
  });


  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

  final String? createdAt;
  final String? updatedAt;
  final String? slug;
  final String? synopsis;
  final String? description;
  final num? coverImageTopOffset;
  final Titles? titles;
  final String? canonicalTitle;
  final List<String>? abbreviatedTitles;
  final String? averageRating;
  final dynamic ratingFrequencies;
  final num? userCount;
  final num? favoritesCount;
  final String? startDate;
  final dynamic endDate;
  final String? nextRelease;
  final num? popularityRank;
  final num? ratingRank;
  final String? ageRating;
  final String? ageRatingGuide;
  final String? subtype;
  final String? status;
  final dynamic tba;
  final PosterImage? posterImage;
  final CoverImage? coverImage;
  final dynamic episodeCount;
  final num? episodeLength;
  final num? totalLength;
  final String? showType;
  final bool? nsfw;
  final String? youtubeVideoId;
}

class CoverImage {
  const CoverImage({
    this.tiny,
    this.large,
    this.small,
    this.original,
    this.meta,
  });


  final String? tiny;
  final String? large;
  final String? small;
  final String? original;
  final Meta? meta;
}

class Titles {
  const Titles({
    this.en,
    this.enJp,
    this.jaJp,
  });



  final String? en;
  final String? enJp;
  final String? jaJp;
}

class Meta {
  const Meta({
    this.dimensions,
  });


  final Dimensions? dimensions;
}

class Dimensions {
  const Dimensions({
    this.tiny,
    this.large,
    this.small,
  });


  final Tiny? tiny;
  final Large? large;
  final Small? small;
}

class Small {
  const Small({
    this.width,
    this.height,
  });


  final num? width;
  final num? height;
}


class Large {
  const Large({
    this.width,
    this.height,
  });


  final num? width;
  final num? height;
}


class Tiny {
  const Tiny({
    this.width,
    this.height,
  });


  final num? width;
  final num? height;
}

class PosterImage {
  const PosterImage({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });




  final String? tiny;
  final String? large;
  final String? small;
  final String? medium;
  final String? original;
  final Meta? meta;
}

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
  factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);


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

class Links {
  const Links({
    this.self,
    this.related,
  });
  factory Links.fromJson(Map<String, dynamic> json) => LinksFromJson(json);



  final String? self;
  final String? related;
}

class AnimeStaff {
  const AnimeStaff({
    this.links,
  });


  final Links? links;
}

class AnimeCharacters {
  const AnimeCharacters({
    this.links,
  });

  final Links? links;
}

class AnimeProductions {
  const AnimeProductions({
    this.links,
  });


  final Links? links;
}

class StreamingLinks {
  const StreamingLinks({
    this.links,
  });


  final Links? links;
}

class Episodes {
  const Episodes({
    this.links,
  });


  final Links? links;
}

class Quotes {
  const Quotes({
    this.links,
  });

  final Links? links;
}

class Productions {
  const Productions({
    this.links,
  });

  final Links? links;
}

class Staff {
  const Staff({
    this.links,
  });

  final Links? links;
}

class Characters {
  const Characters({
    this.links,
  });

  final Links? links;
}

class MediaRelationships {
  const MediaRelationships({
    this.links,
  });

  final Links? links;
}

class Reviews {
  const Reviews({
    this.links,
  });

  final Links? links;
}

class Mappings {
  const Mappings({
    this.links,
  });

  final Links? links;
}

class Installments {
  Installments({
    this.links,
  });

  final Links? links;
}

class Castings {
  const Castings({
    this.links,
  });

  final Links? links;
}

class Categories {
  const Categories({
    this.links,
  });

  final Links? links;
}

class Genres {
  const Genres({
    this.links,
  });

  final Links? links;
}
