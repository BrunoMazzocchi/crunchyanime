import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'staff.g.dart';
@JsonSerializable()
class Staff {
  const Staff({
    this.links,
  });

  factory Staff.fromJson(Map<String, dynamic> json) =>
      _$StaffFromJson(json);

  final Links? links;
}

