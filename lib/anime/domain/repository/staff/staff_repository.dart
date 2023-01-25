import '../../../provider/staff/staff_provider.dart';
import '../../models/staff_data.dart';
import '../../models/staff_information.dart';

class StaffRepository {
  final StaffProvider _staffProvider = StaffProvider();
  Future<StaffData> getStaff(String id) async {
    return await _staffProvider.getStaff(id);
  }

  Future<StaffInformation> getStaffInformation(String id) async {
    return await _staffProvider.getStaffInformation(id);
  }

  Future<StaffData> getAllStaff(String id, int page, ) async {
    return await _staffProvider.getAllStaff(id, page);
  }
}