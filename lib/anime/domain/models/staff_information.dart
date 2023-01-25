class StaffInformation {
  Data? data;

  StaffInformation({this.data});

  StaffInformation.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
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



class Attributes {
  String? createdAt;
  String? updatedAt;
  String? name;
  String? malId;
  String? description;
  Image? image;

  Attributes(
      {this.createdAt,
        this.updatedAt,
        this.name,
        this.malId,
        this.description,
        this.image});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    malId = json['malId'];
    description = json['description'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['name'] = this.name;
    data['malId'] = this.malId;
    data['description'] = this.description;
    final image = this.image;
    if (image != null) {
      data['image'] = image.toJson();
    }
    return data;
  }
}

class Image {
  String? tiny;
  String? large;
  String? small;
  String? medium;
  String? original;
  Meta? meta;

  Image(
      {this.tiny,
        this.large,
        this.small,
        this.medium,
        this.original,
        this.meta});

  Image.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'];
    large = json['large'];
    small = json['small'];
    medium = json['medium'];
    original = json['original'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tiny'] = this.tiny;
    data['large'] = this.large;
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['original'] = this.original;
    final meta = this.meta;
    if (meta != null) {
      data['meta'] = meta.toJson();
    }
    return data;
  }
}

class Meta {
  Dimensions? dimensions;

  Meta({this.dimensions});

  Meta.fromJson(Map<String, dynamic> json) {
    dimensions = json['dimensions'] != null
        ? new Dimensions.fromJson(json['dimensions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final dimensions = this.dimensions;
    if (dimensions != null) {
      data['dimensions'] = dimensions.toJson();
    }
    return data;
  }
}

class Dimensions {
  Tiny? tiny;
  Tiny? large;
  Tiny? small;
  Tiny?medium;

  Dimensions({this.tiny, this.large, this.small, this.medium});

  Dimensions.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'] != null ? new Tiny.fromJson(json['tiny']) : null;
    large = json['large'] != null ? new Tiny.fromJson(json['large']) : null;
    small = json['small'] != null ? new Tiny.fromJson(json['small']) : null;
    medium = json['medium'] != null ? new Tiny.fromJson(json['medium']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final tiny = this.tiny;
    if (tiny != null) {
      data['tiny'] = tiny.toJson();
    }
    final large = this.large;
    if (large != null) {
      data['large'] = large.toJson();
    }
    final small = this.small;
    if (small != null) {
      data['small'] = small.toJson();
    }
    final medium = this.medium;
    if (medium != null) {
      data['medium'] = medium.toJson();
    }
    return data;
  }
}

class Tiny {
  int? width;
  int? height;

  Tiny({this.width, this.height});

  Tiny.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Relationships {
  Castings? castings;
  Castings? staff;
  Castings? voices;

  Relationships({this.castings, this.staff, this.voices});

  Relationships.fromJson(Map<String, dynamic> json) {
    castings = json['castings'] != null
        ? new Castings.fromJson(json['castings'])
        : null;
    staff = json['staff'] != null ? new Castings.fromJson(json['staff']) : null;
    voices =
    json['voices'] != null ? new Castings.fromJson(json['voices']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    final castings = this.castings;
    if (castings != null) {
      data['castings'] = castings.toJson();
    }
    final staff = this.staff;
    if (staff != null) {
      data['staff'] = staff.toJson();
    }
    final voices = this.voices;
    if (voices != null) {
      data['voices'] = voices.toJson();
    }
    return data;
  }
}

class Castings {
  Links? links;

  Castings({this.links});

  Castings.fromJson(Map<String, dynamic> json) {
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

class Links {
  String? self;
  String? related;

  Links({this.self, this.related});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['related'] = this.related;
    return data;
  }
}