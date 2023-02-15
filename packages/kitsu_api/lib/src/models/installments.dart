import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'installments.g.dart';
@JsonSerializable()
class Installments {
  Installments({
    this.links,
  });

  factory Installments.fromJson(Map<String, dynamic> json) =>
      _$InstallmentsFromJson(json);

  final Links? links;
}

