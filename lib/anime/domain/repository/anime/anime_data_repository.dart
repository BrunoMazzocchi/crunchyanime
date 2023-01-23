import 'package:crunchyanime/anime/provider/anime/anime_data_provider.dart';

import '../../models/anime_data.dart';
import '../../models/categories_data.dart';

class AnimeDataRepository {
  final AnimeDataProvider _animeDataProvider = AnimeDataProvider();

  Future<AnimeData> getAnime(String animeId) async {
    return await _animeDataProvider.getAnime(animeId);
  }

  Future<Relationships> getAnimeRelationships(String animeId) async {
    return await _animeDataProvider.getAnimeRelationships(animeId);
  }

  Future<CategoriesData> getCategories(String id) async {
    return await _animeDataProvider.getCategories(id);
  }

}
