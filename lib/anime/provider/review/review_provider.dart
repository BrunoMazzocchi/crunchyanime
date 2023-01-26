import 'package:crunchyanime/anime/domain/models/review_data.dart';
import 'package:dio/dio.dart';

class ReviewProvider  {
  final Dio _dio = Dio();
  final String baseUrl = "https://kitsu.io/api/edge/anime/";

  Future<ReviewData> getReview(String id) async {
    late ReviewData reviewData ;
    try {
      final Response response = await _dio.get(baseUrl + id + "/reviews");

      if(response.statusCode == 200) {
        reviewData = ReviewData.fromJson(response.data);
      }

    } catch (e) {
      throw Exception(e);
    }

    return reviewData;
  }

}