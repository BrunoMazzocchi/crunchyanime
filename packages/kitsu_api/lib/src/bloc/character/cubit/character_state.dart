part of 'character_cubit.dart';
enum Characterstatus {initial, loading, success, failure}
extension CharacterStatusX on Characterstatus {
  bool get isInitial => this == Characterstatus.initial;
  bool get isLoading => this == Characterstatus.loading;
  bool get isSuccess => this ==  Characterstatus.success;
  bool get isFailure => this == Characterstatus.failure;
}

@JsonSerializable()
 class CharacterState extends Equatable {
  
  const CharacterState({
    this.character = const Character(),
    this.status = Characterstatus.initial,
  });

  final Character character;
  final Characterstatus status;

  CharacterState copyWith({
    Character? character,
    Characterstatus? status,
  }) => CharacterState(
    character: character ?? this.character,
    status: status ?? this.status,
  );

  factory CharacterState.fromJson(Map<String, dynamic> json) => _$CharacterStateFromJson(json);


  @override
  List<Object> get props => [character, status];
}

