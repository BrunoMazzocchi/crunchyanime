
import 'package:crunchyanime/anime/provider/character/character_data_provider.dart';

import '../../models/character_data.dart';
import '../../models/character_information.dart';

class CharacterDataRepository {
  final CharacterDataProvider _characterDataProvider = CharacterDataProvider();

  Future<CharacterData> getAllAnime(String animeId, int page) async {
    return await _characterDataProvider.fetchAllAnime(animeId, page);
  }

  Future<CharacterData> getCharacters(String animeId) async {
    return await _characterDataProvider.fetchCharacters(animeId);
  }

  Future<CharacterInformation> getCharacter(String id) async {
    return await _characterDataProvider.fetchCharacter(id);
  }


}