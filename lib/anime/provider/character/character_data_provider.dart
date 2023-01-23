import 'package:crunchyanime/anime/domain/models/character_information.dart';
import 'package:dio/dio.dart';

import '../../domain/models/character_data.dart';

class CharacterDataProvider {
  final Dio _dio = Dio();

  Future<CharacterData> fetchCharacters(String id) async {
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
  }

  Future<CharacterInformation> fetchCharacter(String id) async {
    final String baseUrl =
        'https://kitsu.io/api/edge/media-characters/$id/character';
    late CharacterInformation data;
    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        data = CharacterInformation.fromJson(response.data);
      } else {
        throw Exception('Failed to load anime');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }

  Future<CharacterData> fetchAllAnime(String id, int page, ) async {
    final String baseUrl =
        'https://kitsu.io/api/edge/anime/$id/characters?page%5Blimit%5D=20&page%5Boffset%5D=$page';
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
  }
}
