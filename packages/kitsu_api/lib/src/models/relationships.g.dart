// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Relationships',
      json,
      ($checkedConvert) {
        final val = Relationships(
          genres: $checkedConvert(
              'genres',
              (v) => v == null
                  ? null
                  : Genres.fromJson(v as Map<String, dynamic>)),
          categories: $checkedConvert(
              'categories',
              (v) => v == null
                  ? null
                  : Categories.fromJson(v as Map<String, dynamic>)),
          castings: $checkedConvert(
              'castings',
              (v) => v == null
                  ? null
                  : Castings.fromJson(v as Map<String, dynamic>)),
          installments: $checkedConvert(
              'installments',
              (v) => v == null
                  ? null
                  : Installments.fromJson(v as Map<String, dynamic>)),
          mappings: $checkedConvert(
              'mappings',
              (v) => v == null
                  ? null
                  : Mappings.fromJson(v as Map<String, dynamic>)),
          reviews: $checkedConvert(
              'reviews',
              (v) => v == null
                  ? null
                  : Reviews.fromJson(v as Map<String, dynamic>)),
          mediaRelationships: $checkedConvert(
              'media_relationships',
              (v) => v == null
                  ? null
                  : MediaRelationships.fromJson(v as Map<String, dynamic>)),
          characters: $checkedConvert(
              'characters',
              (v) => v == null
                  ? null
                  : Characters.fromJson(v as Map<String, dynamic>)),
          staff: $checkedConvert(
              'staff',
              (v) =>
                  v == null ? null : Staff.fromJson(v as Map<String, dynamic>)),
          productions: $checkedConvert(
              'productions',
              (v) => v == null
                  ? null
                  : Productions.fromJson(v as Map<String, dynamic>)),
          quotes: $checkedConvert(
              'quotes',
              (v) => v == null
                  ? null
                  : Quotes.fromJson(v as Map<String, dynamic>)),
          episodes: $checkedConvert(
              'episodes',
              (v) => v == null
                  ? null
                  : Episodes.fromJson(v as Map<String, dynamic>)),
          streamingLinks: $checkedConvert(
              'streaming_links',
              (v) => v == null
                  ? null
                  : StreamingLinks.fromJson(v as Map<String, dynamic>)),
          animeProductions: $checkedConvert(
              'anime_productions',
              (v) => v == null
                  ? null
                  : AnimeProductions.fromJson(v as Map<String, dynamic>)),
          animeCharacters: $checkedConvert(
              'anime_characters',
              (v) => v == null
                  ? null
                  : AnimeCharacters.fromJson(v as Map<String, dynamic>)),
          animeStaff: $checkedConvert(
              'anime_staff',
              (v) => v == null
                  ? null
                  : AnimeStaff.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'mediaRelationships': 'media_relationships',
        'streamingLinks': 'streaming_links',
        'animeProductions': 'anime_productions',
        'animeCharacters': 'anime_characters',
        'animeStaff': 'anime_staff'
      },
    );
