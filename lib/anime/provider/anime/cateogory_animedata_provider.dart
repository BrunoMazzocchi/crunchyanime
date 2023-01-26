import 'package:dio/dio.dart';

import '../../domain/models/anime_container.dart';
import '../../domain/models/anime_data.dart';

class CategoryAnimeDataProvider{

  final Dio _dio = Dio();

  Future<AnimeContainer> getTrending() async {
    String baseUrl = 'https://kitsu.io/api/edge/trending/anime';
    late AnimeContainer data;


    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        data = AnimeContainer.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }


  Future<AnimeContainer> getByCategory(String category) async {
    String baseUrl = 'https://kitsu.io/api/edge/anime?filter[categories]=$category';
    late AnimeContainer data;

    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
         data = AnimeContainer.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }
}