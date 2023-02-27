import 'package:json_annotation/json_annotation.dart';
import 'package:kitsu_api/src/models/characters/character/names.dart';
import 'image.dart';
import 'names.dart'; 
part 'attributes.g.dart';

@JsonSerializable()
class  Attributes  { 
   final String? createdAt;
   final String? updatedAt; 
   final String? slug; 
   final Names? names;
   final String? canonicalName;
   final List<String>? otherNames;
   final String? name;
   final int? malId;
   final String? description;
   final Image? image; 


  Attributes({this.createdAt, this.updatedAt, this.slug, this.names, this.canonicalName, this.otherNames, this.name, this.malId, this.description, this.image});

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
      
}