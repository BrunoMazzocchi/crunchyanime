import 'package:dio/dio.dart';

import '../../domain/models/staff_data.dart';
import '../../domain/models/staff_information.dart';

class StaffProvider {


  final Dio _dio = Dio();
  Future<StaffData> getStaff(String id) async {
    late StaffData data;
    try {
      final response = await _dio.get('https://kitsu.io/api/edge/anime/$id/staff');
      data = StaffData.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
    }


    return data;
  }



  Future<StaffInformation> getStaffInformation(String id) async {
    late StaffInformation data;
    try {
      final response = await _dio.get('https://kitsu.io/api/edge/media-staff/$id/person');
      data = StaffInformation.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
    }

    return data;
  }

  Future<StaffData> getAllStaff(String id, int page, ) async {
    final String baseUrl =
        'https://kitsu.io/api/edge/anime/$id/staff?page%5Blimit%5D=10&page%5Boffset%5D=$page';
    print(baseUrl);
    late StaffData data;
    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        data = StaffData.fromJson(response.data);
      } else {
        throw Exception('Failed to load staff');
      }
    } catch (e) {
      throw Exception('Failed to load anime');
    }

    return data;
  }

}