import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../models/staff_data.dart';
import '../models/staff_information.dart';
import '../repository/staff/staff_repository.dart';

class StaffBloc implements Bloc {
  final StaffRepository _staffRepository = StaffRepository();

  Future<StaffData> getStaff(String id) async {
    return await _staffRepository.getStaff(id);
  }

  Future<StaffInformation> getStaffInformation(String id) async {
    return await _staffRepository.getStaffInformation(id);
  }

  Future<StaffData> getAllStaff(
    String id,
    int page,
  ) async {
    return await _staffRepository.getAllStaff(id, page);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
