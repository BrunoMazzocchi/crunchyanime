import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/kitsu_api.dart';
part 'character_state.dart';
part 'character_cubit.g.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final String? id;

  CharacterCubit({this.id}) : super(CharacterState());


   final KitsuRepository _kitsuRepository = KitsuRepository(
    KitsuClientCache(),
    KitsuClient(),
  );


  Future<void> getCharacter() async {


     if(state.status.isInitial) {
       emit(state.copyWith(status: Characterstatus.loading));


       try {
          final Character character = await _kitsuRepository.getCharacter(id!);
        emit(state.copyWith(character: character, status: Characterstatus.success));
        } catch (e) {
          emit(state.copyWith(status: Characterstatus.failure));
       }


     }
  }

  Future<void> resetCharacter() async {
    if(state.status.isSuccess) {
      emit(state.copyWith(status: Characterstatus.initial));
    }
  }


}