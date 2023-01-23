class CharacterData {
  List<Data>? data;
  Meta? meta;
  Links? links;

  CharacterData({this.data, this.meta, this.links});

  CharacterData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    relationships = json['relationships'] != null
        ? new Relationships.fromJson(json['relationships'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships!.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? related;
  String?  first;
  String?  next;
  String? last;

  Links({this.self, this.related, this.first, this.next, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    related = json['related'];
    first = json['first'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['related'] = this.related;
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}


class Attributes {
  String? createdAt;
  String? updatedAt;
  String? role;

  Attributes({this.createdAt, this.updatedAt, this.role});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['role'] = this.role;
    return data;
  }
}

class Relationships {
  Media? media;
  Media? character;
  Media? voices;

  Relationships({this.media, this.character, this.voices});

  Relationships.fromJson(Map<String, dynamic> json) {
    media = json['media'] != null ? new Media.fromJson(json['media']) : null;
    character = json['character'] != null
        ? new Media.fromJson(json['character'])
        : null;
    voices = json['voices'] != null ? new Media.fromJson(json['voices']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.media != null) {
      data['media'] = this.media!.toJson();
    }
    if (this.character != null) {
      data['character'] = this.character!.toJson();
    }
    if (this.voices != null) {
      data['voices'] = this.voices!.toJson();
    }
    return data;
  }
}

class Media {
  Links? links;

  Media({this.links});

  Media.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (links != null) {
      data['links'] = links!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}

