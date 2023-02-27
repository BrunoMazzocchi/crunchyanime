import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../kitsu_api.dart';
import '../../constants.dart';
part 'kitsu_anime_event.dart';
part 'kitsu_anime_state.dart';

class KitsuAnimeBloc extends Bloc<KitsuAnimeEvent, KitsuAnimeState> {
  KitsuAnimeBloc({
    required this.kitsuRepository,
  }) : super(const KitsuAnimeState()) {
    on<AnimeInformationFetched>(_onAnimeOpen,
        transformer: throttleDroppable(throttleDuration));
    on<ResetAnimeInformation>(_onResetAnimeInformation);

  }

  final KitsuRepository kitsuRepository;

  Future<void> _onAnimeOpen(
      AnimeInformationFetched event, Emitter<KitsuAnimeState> emit) async {
    try {
      if (state.status == AnimeInformationState.initial) {
        final animeCategory =
            await kitsuRepository.getAnimeCategories(event.id);
        final mediaCharacterResult = 
            await kitsuRepository.getMediaCharacterResult(event.id);
        return emit(state.copyWith(
          status: AnimeInformationState.success,
          animeCategory: animeCategory,
          mediaCharacterResult: mediaCharacterResult,
        ));
      }
    } catch (_) {
      emit(state.copyWith(status: AnimeInformationState.failure));
    }
  }

  Future<void> _onResetAnimeInformation(
      ResetAnimeInformation event, Emitter<KitsuAnimeState> emit) async {
      emit(state.copyWith(status: AnimeInformationState.initial));

  }


}
