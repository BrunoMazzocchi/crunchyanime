import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:kitsu_api/kitsu_api.dart';
import 'package:kitsu_api/src/models/characters/character_search_result.dart';

import 'models/anime/models.dart';
import 'models/character_information/models.dart';

class KitsuClient {
  KitsuClient({
    http.Client? httpClient,
    this.baseUrl = 'https://kitsu.io/api/edge/',
  }) : this.httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client httpClient;

  Future<AnimeSearchResult> search(String query) async {
    final response = await httpClient
        .get(Uri.parse("${baseUrl}anime?filter[text]=${query}"));
    final results = json.decode(response.body);
    if (response.statusCode == 200) {
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
    final response = await httpClient
        .get(Uri.parse("${baseUrl}anime?filter[categories]=${category}"));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as List;
      return data.map((dynamic json) => Anime.fromJson(json)).toList();
    } else {
      throw Exception('error fetching anime');
    }
  }

  Future<CharacterSearchResult> fetchCharacters(String id) async {
    final String baseUrl = 'https://kitsu.io/api/edge/anime/$id/characters';
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return CharacterSearchResult.fromJson(body);
    } else {
      throw Exception('error fetching anime');
    }
  }
  Future<CharacterInformationResult> fetchCharacterInformation(String id) async {
    final String baseUrl = 'https://kitsu.io/api/edge/media-characters/$id/character';
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as Map<String, dynamic>;
      print(CharacterInformationResult.fromJson(data).data);
      return CharacterInformationResult.fromJson(body['data']);
    } else {
      throw Exception('error fetching character information');
    }
  }


  Future<CategorySearchResult> fetchAnimeCategories(String id) async {
    final String baseUrl = 'https://kitsu.io/api/edge/anime/$id/categories';
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return CategorySearchResult.fromJson(body);
    } else {
      throw Exception('error fetching anime');
    }
  }

}

