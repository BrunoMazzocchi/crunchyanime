import 'models/anime/models.dart';
import 'dart:async'; 
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/category/models.dart';

class KitsuClient{ 
  KitsuClient({ 
    http.Client? httpClient, 
    this.baseUrl = 'https://kitsu.io/api/edge/',
  }) : this.httpClient = httpClient ?? http.Client();

  final String baseUrl; 
  final http.Client httpClient;

  Future<AnimeSearchResult> search(String query) async {
    final response = await httpClient.get(Uri.parse("${baseUrl}anime?filter[text]=${query}"));
    final results = json.decode(response.body);
    if(response.statusCode == 200) {
      return AnimeSearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }
  }

  Future<List<Anime>> fetchAnime() async {
    final response = await httpClient.get(
      Uri.https(
        'kitsu.io',
        '/api/edge/trending/anime',
      ),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as List;
      return data.map((dynamic json) => Anime.fromJson(json)).toList();
    } else {
      throw Exception('error fetching anime');
    }
  }

  Future<List<Anime>> fetchByCategory(String category) async {
    final response = await httpClient.get(Uri.parse("${baseUrl}anime?filter[categories]=${category}"));

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as List;
      return data.map((dynamic json) => Anime.fromJson(json)).toList();
    } else {
      throw Exception('error fetching anime');
    }
  }

/*  Future<CharacterData> fetchCharacters(String id) async {
    final String baseUrl = 'https://kitsu.io/api/edge/anime/$id/characters';
    late CharacterData data;

    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        data = CharacterData.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }*/

}

