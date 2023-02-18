// Even the anime is composed by different parts, when we search an anime it includes multiple data

import 'anime.dart';
import '../shared/meta.dart';
import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'anime_search_result.g.dart';
@JsonSerializable()
class AnimeSearchResult { 
    const AnimeSearchResult({ 
    this.data, 
    this.meta, 
    this.links,
    });

    factory AnimeSearchResult.fromJson(Map<String, dynamic> json) => _$AnimeSearchResultFromJson(json);

    final List<Anime>? data; 
    final Meta? meta;
    final Links? links;
}