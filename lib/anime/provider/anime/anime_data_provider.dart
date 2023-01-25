import 'package:dio/dio.dart';

import '../../domain/models/anime_container.dart';
import '../../domain/models/anime_data.dart';
import '../../domain/models/categories_data.dart';

class AnimeDataProvider {

  final Dio _dio = Dio();

  Future<AnimeData> getAnime(String animeId) async {
    late AnimeData data;
    try {
      Response response = await _dio.get("https://kitsu.io/api/edge/anime/$animeId");
      if (response.statusCode == 200) {
        data = AnimeData.fromJson(response.data['data']);
      } else if(
        response.statusCode == 404
      ) {
        throw Exception('Anime not found');
      } else {
        throw Exception('Something went wrong');
      }

    } catch (e) {
      throw Exception('Failed to load anime exception: $e');
    }

    return data;
  }

  Future<Relationships> getAnimeRelationships(String animeId) async {
    late Relationships relationships;

    try {
      Response response = await _dio.get("https://kitsu.io/api/edge/anime/$animeId");
      if (response.statusCode == 200) {
        relationships = Relationships.fromJson(response.data
        ['data']['relationships']);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return relationships;
  }

  Future<CategoriesData> getCategories(String id) async {
    late CategoriesData categoriesData;
    try {
      Response response = await _dio.get("https://kitsu.io/api/edge/anime/$id/genres");
      if (response.statusCode == 200) {
        categoriesData = CategoriesData.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime categories');
      }
    } catch (e) {
      throw Exception('Failed to load anime categories');
    }

    return categoriesData;
  }

  Future<AnimeContainer> getAllAnime(String category, int page)  async {
    late AnimeContainer animeContainer;
    try {
      Response response = await _dio.get("https://kitsu.io/api/edge/anime?filter[categories]=$category&page[limit]=20&page[offset]=$page");

      if (response.statusCode == 200) {
        animeContainer = AnimeContainer.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return animeContainer;
  }

}