
import 'package:crunchyanime/anime/domain/models/review_data.dart';
import 'package:crunchyanime/anime/domain/repository/review/review_repository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ReviewBloc implements Bloc {


final ReviewRepository _reviewRepository = ReviewRepository();

  Future<ReviewData> getReviews(String id) async {
    return await _reviewRepository.getReview(id);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}