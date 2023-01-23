
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../models/character_data.dart';
import '../models/character_information.dart';
import '../repository/character/character_data_repository.dart';

class CharacterBloc implements Bloc {


  final CharacterDataRepository _characterDataRepository = CharacterDataRepository();

  Future<CharacterData> getAllAnime(String animeId, int page) async {
    return await _characterDataRepository.getAllAnime(animeId, page);
  }

  Future<CharacterData> getCharacters(String animeId) async {
    return await _characterDataRepository.getCharacters(animeId);
  }

  Future<CharacterInformation> getCharacter(String id) async {
    return await _characterDataRepository.getCharacter(id);
  }




  @override
  void dispose() {
    // TODO: implement dispose
  }




}