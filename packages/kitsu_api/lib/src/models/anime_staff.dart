import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'anime_staff.g.dart';
@JsonSerializable()
class AnimeStaff {
  const AnimeStaff({
    this.links,
  });
  
  factory AnimeStaff.fromJson(Map<String, dynamic> json) =>
      _$AnimeStaffFromJson(json);

  final Links? links;
}

