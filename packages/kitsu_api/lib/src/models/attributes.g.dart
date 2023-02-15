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
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String?),
          synopsis: $checkedConvert('synopsis', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          coverImageTopOffset:
              $checkedConvert('cover_image_top_offset', (v) => v as num?),
          titles: $checkedConvert(
              'titles',
              (v) => v == null
                  ? null
                  : Titles.fromJson(v as Map<String, dynamic>)),
          canonicalTitle:
              $checkedConvert('canonical_title', (v) => v as String?),
          abbreviatedTitles: $checkedConvert('abbreviated_titles',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          averageRating: $checkedConvert('average_rating', (v) => v as String?),
          ratingFrequencies: $checkedConvert('rating_frequencies', (v) => v),
          userCount: $checkedConvert('user_count', (v) => v as num?),
          favoritesCount: $checkedConvert('favorites_count', (v) => v as num?),
          startDate: $checkedConvert('start_date', (v) => v as String?),
          endDate: $checkedConvert('end_date', (v) => v),
          nextRelease: $checkedConvert('next_release', (v) => v as String?),
          popularityRank: $checkedConvert('popularity_rank', (v) => v as num?),
          ratingRank: $checkedConvert('rating_rank', (v) => v as num?),
          ageRating: $checkedConvert('age_rating', (v) => v as String?),
          ageRatingGuide:
              $checkedConvert('age_rating_guide', (v) => v as String?),
          subtype: $checkedConvert('subtype', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          tba: $checkedConvert('tba', (v) => v),
          posterImage: $checkedConvert(
              'poster_image',
              (v) => v == null
                  ? null
                  : PosterImage.fromJson(v as Map<String, dynamic>)),
          coverImage: $checkedConvert(
              'cover_image',
              (v) => v == null
                  ? null
                  : CoverImage.fromJson(v as Map<String, dynamic>)),
          episodeCount: $checkedConvert('episode_count', (v) => v),
          episodeLength: $checkedConvert('episode_length', (v) => v as num?),
          totalLength: $checkedConvert('total_length', (v) => v as num?),
          youtubeVideoId:
              $checkedConvert('youtube_video_id', (v) => v as String?),
          showType: $checkedConvert('show_type', (v) => v as String?),
          nsfw: $checkedConvert('nsfw', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'coverImageTopOffset': 'cover_image_top_offset',
        'canonicalTitle': 'canonical_title',
        'abbreviatedTitles': 'abbreviated_titles',
        'averageRating': 'average_rating',
        'ratingFrequencies': 'rating_frequencies',
        'userCount': 'user_count',
        'favoritesCount': 'favorites_count',
        'startDate': 'start_date',
        'endDate': 'end_date',
        'nextRelease': 'next_release',
        'popularityRank': 'popularity_rank',
        'ratingRank': 'rating_rank',
        'ageRating': 'age_rating',
        'ageRatingGuide': 'age_rating_guide',
        'posterImage': 'poster_image',
        'coverImage': 'cover_image',
        'episodeCount': 'episode_count',
        'episodeLength': 'episode_length',
        'totalLength': 'total_length',
        'youtubeVideoId': 'youtube_video_id',
        'showType': 'show_type'
      },
    );
