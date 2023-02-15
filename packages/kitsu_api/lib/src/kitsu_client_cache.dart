import 'models/models.dart'; 

// It saves prev queries to avoid making unnecessary network calls

class KitsuClientCache { 
  final _cache = <String, AnimeSearchResult>{};
  AnimeSearchResult? get(String query) => _cache[query];

  void set(String query, AnimeSearchResult result) => _cache[query] = result;
  bool contains(String query) => _cache.containsKey(query);
  void remove(String query) => _cache.remove(query);
}

