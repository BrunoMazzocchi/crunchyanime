import 'package:dio/dio.dart';

import '../../domain/models/anime_data.dart';

class CategoryAnimeDataProvider{

  final Dio _dio = Dio();

  Future<List<AnimeData>> getTrending() async {
    String baseUrl = 'https://kitsu.io/api/edge/trending/anime';
    List<AnimeData> data = [];

    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        for (var i = 0; i < response.data['data'].length; i++) {
          data.add(AnimeData.fromJson(response.data['data'][i]));
        }
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }

  Future<List<AnimeData>> getByCategory(String category) async {
    String baseUrl = 'https://kitsu.io/api/edge/anime?filter[categories]=$category';
    List<AnimeData> data = [];

    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        for (var i = 0; i < response.data['data'].length; i++) {
          data.add(AnimeData.fromJson(response.data['data'][i]));
        }
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }
}