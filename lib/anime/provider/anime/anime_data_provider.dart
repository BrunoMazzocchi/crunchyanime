import 'package:dio/dio.dart';

import '../../domain/models/anime_data.dart';
import '../../domain/models/categories_data.dart';

class AnimeDataProvider {

  final Dio _dio = Dio();
  late String _baseUrl = 'https://kitsu.io/api/edge/anime/';

  Future<AnimeData> getAnime(String animeId) async {
    late AnimeData data;

    try {
      Response response = await _dio.get(_baseUrl + animeId);
      if (response.statusCode == 200) {
        data = AnimeData.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }

  Future<Relationships> getAnimeRelationships(String animeId) async {
    late Relationships relationships;

    try {
      Response response = await _dio.get(_baseUrl + animeId);
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
    _baseUrl = 'https://kitsu.io/api/edge/anime/$id/genres';
    try {
      Response response = await _dio.get(_baseUrl);
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
}