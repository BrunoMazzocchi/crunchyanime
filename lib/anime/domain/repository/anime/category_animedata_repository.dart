import '../../../provider/anime/cateogory_animedata_provider.dart';
import '../../models/anime_data.dart';

class CategoryAnimeDataRepository {
  final CategoryAnimeDataProvider _categoryAnimeDataProvider = CategoryAnimeDataProvider();

  Future<List<AnimeData>> getTrending() async {
    return await _categoryAnimeDataProvider.getTrending();
  }

  Future<List<AnimeData>> getByCategory(String category) async {
    return await _categoryAnimeDataProvider.getByCategory(category);
  }
}

