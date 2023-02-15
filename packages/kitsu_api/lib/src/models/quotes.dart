import 'links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'quotes.g.dart';
@JsonSerializable()
class Quotes {
  const Quotes({
    this.links,
  });

  factory Quotes.fromJson(Map<String, dynamic> json) =>
      _$QuotesFromJson(json);

  final Links? links;
}
