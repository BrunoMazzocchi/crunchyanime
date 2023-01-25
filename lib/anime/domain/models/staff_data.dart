class StaffData {
  List<Data>? data;
  Meta? meta;
  Links? links;

  StaffData({this.data, this.meta, this.links});

  StaffData.fromJson(Map<String, dynamic> json) {
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
    final links = this.links;
    if (links != null) {
      data['links'] = links.toJson();
    }
    final attributes = this.attributes;
    if (attributes != null) {
      data['attributes'] = attributes.toJson();
    }
    final relationships = this.relationships;
    if (relationships != null) {
      data['relationships'] = relationships.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? first;
  String? next;
  String? last;
  String? related;

  Links({this.self, this.first, this.next, this.last, this.related});


  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    first = json['first'];
    next = json['next'];
    last = json['last'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    data['related'] = this.related;
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
  Media? person;

  Relationships({this.media, this.person});

  Relationships.fromJson(Map<String, dynamic> json) {
    media = json['media'] != null ? new Media.fromJson(json['media']) : null;
    person = json['person'] != null ? new Media.fromJson(json['person']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final media = this.media;
    if (media != null) {
      data['media'] = media.toJson();
    }
    final person = this.person;
    if (person != null) {
      data['person'] = person.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final links = this.links;
    if (links != null) {
      data['links'] = links.toJson();
    }
    return data;
  }
}

class Meta {
  int? _count;

  Meta({int? count}) {
    this._count = count;
  }


  int? get count => _count;
  set count(int? count) => _count = count;

  Meta.fromJson(Map<String, dynamic> json) {
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this._count;
    return data;
  }
}
