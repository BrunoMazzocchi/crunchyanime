import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../kitsu_api.dart';

part 'character_state.dart';
part 'character_cubit.g.dart';


class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit( this._characterRepository) : super( CharacterState());

  final KitsuRepository _characterRepository;

  Future<void> getCharacter(String id) async {
    emit(state.copyWith(status: CharacterStatus.loading));
    try {
      if(state.status == CharacterStatus.loading) {
        final character = await _characterRepository.getCharacterInformation(id);
        emit(state.copyWith(
          status: CharacterStatus.loaded,
          characterInformationResult: character,
        ));
      }
    } on Exception {
      emit(state.copyWith(status: CharacterStatus.error));
    }
  }
}