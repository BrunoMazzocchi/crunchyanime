import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kitsu_api/kitsu_api.dart';

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


  Future<MediaCharacterResult> fetchMediaCharacterResult(String anime, [int offset = 0]) async {
    final String baseUrl = "https://kitsu.io/api/edge/anime/${anime}/characters?page%5Blimit%5D=20&page%5Boffset%5D=$offset";
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return MediaCharacterResult.fromJson(body);
    } else {
      throw Exception('error fetching anime');
    }
  }

  Future<Character> fetchCharacter(String id) async {
    final String baseUrl = "https://kitsu.io/api/edge/media-characters/$id/character";
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return Character.fromJson(body['data']);
    } else {
      throw Exception('error fetching anime');
    }
  }

}

