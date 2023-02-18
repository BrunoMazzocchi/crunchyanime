import '../shared/links.dart';
import 'package:json_annotation/json_annotation.dart';
part 'streaming_links.g.dart';
@JsonSerializable()
class StreamingLinks {
  const StreamingLinks({
    this.links,
  });


  factory StreamingLinks.fromJson(Map<String, dynamic> json) =>
      _$StreamingLinksFromJson(json);
  final Links? links;
}

