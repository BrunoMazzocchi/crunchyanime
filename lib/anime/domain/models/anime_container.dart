import 'package:crunchyanime/anime/domain/models/anime_data.dart';

class AnimeContainer {
  List<AnimeData>? data;
  Meta? meta;
  Links? links;

  AnimeContainer({this.data, this.meta, this.links});

  AnimeContainer.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <AnimeData>[];
      json['data'].forEach((v) {
      data!.add(AnimeData.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
if (this.links != null) {
      data['links'] = this.links!.toJson();
    }

    return data;
  }
}

class Meta {
  int? count;

  Meta({this.count});

  Meta.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = this.count;
    return data;
  }
}

class Links {
  String? first;
  String? next;
  String? last;

  Links({this.first, this.next, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}