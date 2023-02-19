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
    final result = await client.fetchAnime();
    return result;
  }

  Future<List<Anime>> getByCategory(String category) async {
    final result = await client.fetchByCategory(category);
    return result;
  }
}
