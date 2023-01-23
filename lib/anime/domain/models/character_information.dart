class CharacterInformation {
  Data? data;

  CharacterInformation({this.data});

  CharacterInformation.fromJson(Map<String, dynamic> json) {
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

class Attributes {
  String? createdAt;
  String? updatedAt;
  String? slug;
  Names? names;
  String? canonicalName;
  List<String>? otherNames;
  String? name;
  int? malId;
  String? description;
  Image? image;

  Attributes(
      {this.createdAt,
        this.updatedAt,
        this.slug,
        this.names,
        this.canonicalName,
        this.otherNames,
        this.name,
        this.malId,
        this.description,
        this.image});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    slug = json['slug'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    canonicalName = json['canonicalName'];
    otherNames = json['otherNames'].cast<String>();
    name = json['name'];
    malId = json['malId'];
    description = json['description'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['slug'] = this.slug;
    if (this.names != null) {
      data['names'] = this.names!.toJson();
    }
    data['canonicalName'] = this.canonicalName;
    data['otherNames'] = this.otherNames;
    data['name'] = this.name;
    data['malId'] = this.malId;
    data['description'] = this.description;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    return data;
  }
}

class Names {
  String? en;
  String? jaJp;

  Names({this.en, this.jaJp});

  Names.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    jaJp = json['ja_jp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['ja_jp'] = this.jaJp;
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
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
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
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions!.toJson();
    }
    return data;
  }
}

class Dimensions {
  Tiny? tiny;
  Tiny? large;
  Tiny? small;
  Tiny? medium;

  Dimensions({this.tiny, this.large, this.small, this.medium});

  Dimensions.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'] != null ? new Tiny.fromJson(json['tiny']) : null;
    large = json['large'] != null ? new Tiny.fromJson(json['large']) : null;
    small = json['small'] != null ? new Tiny.fromJson(json['small']) : null;
    medium = json['medium'] != null ? new Tiny.fromJson(json['medium']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tiny != null) {
      data['tiny'] = this.tiny!.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large!.toJson();
    }
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    if (this.medium != null) {
      data['medium'] = this.medium!.toJson();
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
  PrimaryMedia? primaryMedia;
  PrimaryMedia? castings;
  PrimaryMedia? mediaCharacters;
  PrimaryMedia? quotes;

  Relationships(
      {this.primaryMedia, this.castings, this.mediaCharacters, this.quotes});

  Relationships.fromJson(Map<String, dynamic> json) {
    primaryMedia = json['primaryMedia'] != null
        ? new PrimaryMedia.fromJson(json['primaryMedia'])
        : null;
    castings = json['castings'] != null
        ? new PrimaryMedia.fromJson(json['castings'])
        : null;
    mediaCharacters = json['mediaCharacters'] != null
        ? new PrimaryMedia.fromJson(json['mediaCharacters'])
        : null;
    quotes = json['quotes'] != null
        ? new PrimaryMedia.fromJson(json['quotes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.primaryMedia != null) {
      data['primaryMedia'] = this.primaryMedia!.toJson();
    }
    if (this.castings != null) {
      data['castings'] = this.castings!.toJson();
    }
    if (this.mediaCharacters != null) {
      data['mediaCharacters'] = this.mediaCharacters!.toJson();
    }
    if (this.quotes != null) {
      data['quotes'] = this.quotes!.toJson();
    }
    return data;
  }
}

class PrimaryMedia {
  Links? links;

  PrimaryMedia({this.links});

  PrimaryMedia.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}


