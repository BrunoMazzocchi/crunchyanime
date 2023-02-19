import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../kitsu_api.dart';
import '../../constants.dart';

part 'kitsu_home_event.dart';

part 'kitsu_home_state.dart';

class KitsuHomeBloc extends Bloc<KitsuHomeEvent, KitsuHomeState> {
  KitsuHomeBloc( {required this.kitsuRepository})
      : super(const KitsuHomeState()) {
    on<AnimeFetched>(_onAnimeFetched,
        transformer: throttleDroppable(throttleDuration));
  }

  final KitsuRepository kitsuRepository;

  Future<void> _onAnimeFetched(
      AnimeFetched event, Emitter<KitsuHomeState> emit) async {
    try {
      if (state.status == AnimeStatus.initial) {
        final trendingAnime = await kitsuRepository.getTrendingAnime();
        final firstTopCategory = await kitsuRepository.getByCategory("Shounen");
        final secondTopCategory = await kitsuRepository.getByCategory("Action");
        final thirdTopCategory = await kitsuRepository.getByCategory("Mecha");
        final fourthTopCategory = await kitsuRepository.getByCategory("Romance");
        return emit(state.copyWith(
          status: AnimeStatus.success,
          trendingAnime: trendingAnime,
          firstTopCategory: firstTopCategory,
          secondTopCategory: secondTopCategory,
          thirdTopCategory: thirdTopCategory,
          fourthTopCategory: fourthTopCategory,
        ));
      }
    } catch (_) {
      emit(state.copyWith(status: AnimeStatus.failure));
    }
  }
}
