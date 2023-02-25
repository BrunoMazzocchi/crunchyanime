part of 'character_cubit.dart';

enum CharacterStatus { initial, loading, loaded, error }

@JsonSerializable()
class CharacterState extends Equatable {
  CharacterState({
    this.status = CharacterStatus.initial,
    CharacterInformationResult? characterInformationResult,
}) : characterInformationResult = characterInformationResult ?? CharacterInformationResult.empty;


  factory CharacterState.fromJson(Map<String, dynamic> json) => _$CharacterStateFromJson(json);

  final CharacterStatus status;
  final CharacterInformationResult? characterInformationResult;


  CharacterState copyWith({
    CharacterStatus? status,
    CharacterInformationResult? characterInformationResult,
  }) {
    return CharacterState(
      status: status ?? this.status,
      characterInformationResult: characterInformationResult ?? this.characterInformationResult,
    );
  }

  @override
  List<Object?> get props => [status, characterInformationResult];

}