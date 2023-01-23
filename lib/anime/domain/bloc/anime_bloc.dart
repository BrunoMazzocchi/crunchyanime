




import 'package:crunchyanime/anime/domain/models/anime_data.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../models/categories_data.dart';
import '../repository/anime/anime_data_repository.dart';
import '../repository/anime/category_animedata_repository.dart';

class AnimeBloc implements Bloc {

  final CategoryAnimeDataRepository _categoryAnimeDataRepository = CategoryAnimeDataRepository();
  final AnimeDataRepository _animeDataRepository = AnimeDataRepository();


  Future <List<AnimeData>> getTrending() async {
    return await _categoryAnimeDataRepository.getTrending();
  }


  Future <List<AnimeData>> getByCategory(String category) async {
    return await _categoryAnimeDataRepository.getByCategory(category);
  }


  Future <List<AnimeData>> getList(String type) {
    switch(type) {
      case 'trending':
        return getTrending();
        default :
        return getByCategory(type);
    }
  }


  Future <AnimeData> getAnime(String animeId) async {
    return await _animeDataRepository.getAnime(animeId);
  }

  Future<Relationships> getAnimeRelationships(String animeId) async {
    return await _animeDataRepository.getAnimeRelationships(animeId);
  }

  Future<CategoriesData> getCategories(String id) async {
    return await _animeDataRepository.getCategories(id);
  }




  @override
  void dispose() {
    // TODO: implement dispose
  }




}