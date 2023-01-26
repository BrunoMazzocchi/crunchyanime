import '../../../provider/review/review_provider.dart';
import '../../models/review_data.dart';

class ReviewRepository {
  final ReviewProvider _reviewProvider = ReviewProvider();

  Future<ReviewData> getReview(String id) async {
    return await _reviewProvider.getReview(id);
  }


}