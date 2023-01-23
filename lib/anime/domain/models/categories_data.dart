class CategoriesData {
  List<Data>? data;
  Meta? meta;
  Links? links;

  CategoriesData({this.data, this.meta, this.links});

  CategoriesData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data =  <Data>[];
      json['data'].forEach((v) { data?.add(new Data.fromJson(v)); });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    final meta = this.meta;
    if (meta != null) {
      data['meta'] = meta.toJson();
    }
    final links = this.links;
    if (links != null) {
      data['links'] = links.toJson();
    }
    return data;
  }
}



class Data {
  String? id;
  String? type;
  Links? links;
  Attributes? attributes;

  Data({this.id, this.type, this.links, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
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
    return data;
  }
}


class Attributes {
  String? createdAt;
  String? updatedAt;
  String? name;
  String? slug;
  String? description;

  Attributes(
      {this.createdAt, this.updatedAt, this.name, this.slug, this.description});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['description'] = this.description;
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

class Links {
  String? self;

  Links({this.self});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    return data;
  }
}
