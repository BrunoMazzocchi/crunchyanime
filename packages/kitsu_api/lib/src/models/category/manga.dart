
 import 'package:json_annotation/json_annotation.dart';

import '../shared/links.dart';

part 'manga.g.dart';
  @JsonSerializable()
 class Manga {
    final Links? links;

    const Manga({
      this.links,
    });

    factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
  }