class ReviewData {
  List<Data>? data;
  Meta? meta;
  Links? links;

  ReviewData({this.data, this.meta, this.links});

  ReviewData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta?.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    return data;

  }
}

class Data {
  String? id;
  String? type;
  Links? links;
  Attributes? attributes;
  Relationships? relationships;

  Data({this.id, this.type, this.links, this.attributes, this.relationships});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    relationships = json['relationships'] != null
        ? Relationships.fromJson(json['relationships'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.links != null) {
      data['links'] = this.links?.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships?.toJson();
    }
    return data;
  }
}


class Attributes {
  String? createdAt;
  String? updatedAt;
  String? content;
  String? contentFormatted;
  num? likesCount;
  num? progress;
  num? rating;
  String? source;
  bool? spoiler;

  Attributes(
      {this.createdAt,
        this.updatedAt,
        this.content,
        this.contentFormatted,
        this.likesCount,
        this.progress,
        this.rating,
        this.source,
        this.spoiler});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    content = json['content'];
    contentFormatted = json['contentFormatted'];
    likesCount = json['likesCount'];
    progress = json['progress'];
    rating = json['rating'];
    source = json['source'];
    spoiler = json['spoiler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['content'] = this.content;
    data['contentFormatted'] = this.contentFormatted;
    data['likesCount'] = this.likesCount;
    data['progress'] = this.progress;
    data['rating'] = this.rating;
    data['source'] = this.source;
    data['spoiler'] = this.spoiler;
    return data;
  }
}

class Relationships {
  LibraryEntry? libraryEntry;
  LibraryEntry? media;
  LibraryEntry? user;

  Relationships({this.libraryEntry, this.media, this.user});

  Relationships.fromJson(Map<String, dynamic> json) {
    libraryEntry = json['libraryEntry'] != null
        ? LibraryEntry.fromJson(json['libraryEntry'])
        : null;
    media =
    json['media'] != null ? LibraryEntry.fromJson(json['media']) : null;
    user =
    json['user'] != null ? LibraryEntry.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    final libraryEntry = this.libraryEntry;
    if (libraryEntry != null) {
      data['libraryEntry'] = libraryEntry.toJson();
    }
    final media = this.media;
    if (media != null) {
      data['media'] = media.toJson();
    }
    final user = this.user;
    if (user != null) {
      data['user'] = user.toJson();
    }
    return data;
  }
}

class LibraryEntry {
  Links? links;

  LibraryEntry({this.links});

  LibraryEntry.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    final links = this.links;
    if (links != null) {
      data['links'] = links.toJson();
    }
    return data;
  }
}


class Meta {
  num? count;

  Meta({this.count});

  Meta.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}

class Links {
  String? first;
  String? next;
  String? last;
  String? self;
  String? related;

  Links({this.first, this.next, this.last, this.self, this.related});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    next = json['next'];
    last = json['last'];
    self = json['self'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first'] = first;
    data['next'] = this.next;
    data['last'] = this.last;
    data['self'] = this.self;
    data['related'] = this.related;
    return data;
  }

}
