import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/models.dart';
import 'package:stream_transform/stream_transform.dart';
import '../../kitsu_repository.dart';

part 'kitsu_search_api_event.dart';
part 'kitsu_search_api_state.dart';

const _duration = const Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class KitsuSearchApiBloc extends Bloc<KitsuSearchApiEvent, KitsuSearchApiState> {
  KitsuSearchApiBloc({required this.kitsuRepository})
      : super(SearchStateEmpty()) {
    on<TextChanged>(_onTextChanged, transformer: debounce(_duration));
  }

  final KitsuRepository kitsuRepository;

  void _onTextChanged(
      TextChanged event,
      Emitter<KitsuSearchApiState> emit,
      ) async {
    final searchTerm = event.text;

    if (searchTerm.isEmpty) return emit(SearchStateEmpty());

    emit(SearchStateLoading());

    try {
      final results = await kitsuRepository.search(searchTerm);
      emit(SearchStateSuccess(results));
    } catch (error) {
      emit(error is SearchResultError
          ? SearchStateError(error.message)
          : SearchStateError('something went wrong'));
    }
  }
}