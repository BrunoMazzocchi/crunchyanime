import 'package:json_annotation/json_annotation.dart';
import '../../shared/links.dart';
part 'voices.g.dart'; 

@JsonSerializable()
class Voices {
  final Links? links; 


  Voices({this.links});

  factory Voices.fromJson(Map<String, dynamic> json) => _$VoicesFromJson(json);
}