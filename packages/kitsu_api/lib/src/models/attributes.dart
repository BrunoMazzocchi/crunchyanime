import 'package:json_annotation/json_annotation.dart';
import 'cover_image.dart';
import 'poster_image.dart';
import 'titles.dart';
part 'attributes.g.dart';

@JsonSerializable()
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

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

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








