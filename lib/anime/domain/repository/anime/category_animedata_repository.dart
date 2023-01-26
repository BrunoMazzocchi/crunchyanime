import 'package:crunchyanime/anime/domain/models/anime_container.dart';

import '../../../provider/anime/cateogory_animedata_provider.dart';
import '../../models/anime_data.dart';

class CategoryAnimeDataRepository {
  final CategoryAnimeDataProvider _categoryAnimeDataProvider = CategoryAnimeDataProvider();

  Future<AnimeContainer> getTrending() async {
    return await _categoryAnimeDataProvider.getTrending();
  }

  Future<AnimeContainer> getByCategory(String category) async {
    return await _categoryAnimeDataProvider.getByCategory(category);
  }


}

