import 'package:json_annotation/json_annotation.dart';
part 'links.g.dart';

@JsonSerializable()
class Links {
  const Links({
    this.self,
    this.related,
    this.first,
    this.next,
    this.last,
    this.prev,
  });
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  final String? prev;
  final String? first; 
  final String? next; 
  final String? last;
  final String? self;
  final String? related;
}
