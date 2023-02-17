import 'kitsu_client_cache.dart';
import 'models/models.dart';
import 'kitsu_client.dart';

class KitsuRepository{
 const KitsuRepository(
    this.cache, this.client
  );

  final KitsuClientCache cache;
  final KitsuClient  client;

  Future<AnimeSearchResult> search (String query) async {
    final cachedResult = cache.get(query);

    if(cachedResult != null) { 
      return cachedResult; 
    }
    
    final result = await client.search(query);
    cache.set(query, result);
    return result;
  }

  Future<List<Anime>> getTrendingAnime() async {
    final result = await client.getTrendingAnime();
    return result;
  }

}