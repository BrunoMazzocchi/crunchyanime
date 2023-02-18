// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Attributes',
      json,
      ($checkedConvert) {
        final val = Attributes(
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String?),
          synopsis: $checkedConvert('synopsis', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          coverImageTopOffset:
              $checkedConvert('coverImageTopOffset', (v) => v as num?),
          titles: $checkedConvert(
              'titles',
              (v) => v == null
                  ? null
                  : Titles.fromJson(v as Map<String, dynamic>)),
          canonicalTitle:
              $checkedConvert('canonicalTitle', (v) => v as String?),
          abbreviatedTitles: $checkedConvert('abbreviatedTitles',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          averageRating: $checkedConvert('averageRating', (v) => v as String?),
          ratingFrequencies: $checkedConvert('ratingFrequencies', (v) => v),
          userCount: $checkedConvert('userCount', (v) => v as num?),
          favoritesCount: $checkedConvert('favoritesCount', (v) => v as num?),
          startDate: $checkedConvert('startDate', (v) => v as String?),
          endDate: $checkedConvert('endDate', (v) => v),
          nextRelease: $checkedConvert('nextRelease', (v) => v as String?),
          popularityRank: $checkedConvert('popularityRank', (v) => v as num?),
          ratingRank: $checkedConvert('ratingRank', (v) => v as num?),
          ageRating: $checkedConvert('ageRating', (v) => v as String?),
          ageRatingGuide:
              $checkedConvert('ageRatingGuide', (v) => v as String?),
          subtype: $checkedConvert('subtype', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          tba: $checkedConvert('tba', (v) => v),
          posterImage: $checkedConvert(
              'posterImage',
              (v) => v == null
                  ? null
                  : PosterImage.fromJson(v as Map<String, dynamic>)),
          coverImage: $checkedConvert(
              'coverImage',
              (v) => v == null
                  ? null
                  : CoverImage.fromJson(v as Map<String, dynamic>)),
          episodeCount: $checkedConvert('episodeCount', (v) => v),
          episodeLength: $checkedConvert('episodeLength', (v) => v as num?),
          totalLength: $checkedConvert('totalLength', (v) => v as num?),
          youtubeVideoId:
              $checkedConvert('youtubeVideoId', (v) => v as String?),
          showType: $checkedConvert('showType', (v) => v as String?),
          nsfw: $checkedConvert('nsfw', (v) => v as bool?),
        );
        return val;
      },
    );
