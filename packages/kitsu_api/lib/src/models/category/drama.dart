
import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part  'drama.g.dart';
@JsonSerializable()
 class  Drama {
   final  Links? links;
   const  Drama({
     this.links,
  });
   factory  Drama.fromJson(Map<String, dynamic> json) => _$DramaFromJson(json);
}