import 'package:kitsu_api/kitsu_api.dart';


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

  Future<CategorySearchResult> getAnimeCategories(String id) {
    return client.fetchAnimeCategories(id);
  }

  Future<MediaCharacterResult> getMediaCharacterResult(String anime, [int offset =0]) {
    return client.fetchMediaCharacterResult(anime, offset);
  }

  Future<Character> getCharacter(String id) {
    return client.fetchCharacter(id);
  }

}
