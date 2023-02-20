import 'package:kitsu_api/src/models/characters/character_search_result.dart';

import 'kitsu_client.dart';
import 'kitsu_client_cache.dart';
import 'models/anime/models.dart';

class KitsuRepository {
  const KitsuRepository(this.cache, this.client);

  final KitsuClientCache cache;
  final KitsuClient client;

  Future<AnimeSearchResult> search(String query) async {
    final cachedResult = cache.get(query);

    if (cachedResult != null) {
      return cachedResult;
    }

    final result = await client.search(query);
    cache.set(query, result);
    return result;
  }

  Future<List<Anime>> getTrendingAnime() async {
    return await client.fetchAnime();
  }

  Future<List<Anime>> getByCategory(String category) async {
    return await client.fetchByCategory(category);
  }

  Future<CharacterSearchResult> getCharacters(String id) async {
    return await client.fetchCharacters(id);
  }
}
