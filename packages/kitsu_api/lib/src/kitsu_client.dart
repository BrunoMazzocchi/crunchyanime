import 'models/models.dart';
import 'dart:async'; 
import 'dart:convert';

import 'package:http/http.dart' as http;

class KitsuClient{ 
  KitsuClient({ 
    http.Client? httpClient, 
    this.baseUrl = 'https://kitsu.io/api/edge/anime?filter[text]=',
  }) : this.httpClient = httpClient ?? http.Client();

  final String baseUrl; 
  final http.Client httpClient;

  Future<AnimeSearchResult> search(String query) async {
    final response = await httpClient.get(Uri.parse("$baseUrl$query"));
    final results = json.decode(response.body);
    if(response.statusCode == 200) {
      return AnimeSearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }

  }

}

