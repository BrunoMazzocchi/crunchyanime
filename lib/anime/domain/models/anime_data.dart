
class AnimeData {
  AnimeData({
      String? id, 
      String? type, 
      Links? links, 
      Attributes? attributes, 
      Relationships? relationships,}){
    _id = id;
    _type = type;
    _links = links;
    _attributes = attributes;
    _relationships = relationships;
}

  AnimeData.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _attributes = json['attributes'] != null ? Attributes.fromJson(json['attributes']) : null;
    _relationships = json['relationships'] != null ? Relationships.fromJson(json['relationships']) : null;
  }
  String? _id;
  String? _type;
  Links? _links;
  Attributes? _attributes;
  Relationships? _relationships;
AnimeData copyWith({  String? id,
  String? type,
  Links? links,
  Attributes? attributes,
  Relationships? relationships,
}) => AnimeData(  id: id ?? _id,
  type: type ?? _type,
  links: links ?? _links,
  attributes: attributes ?? _attributes,
  relationships: relationships ?? _relationships,
);
  String? get id => _id;
  String? get type => _type;
  Links? get links => _links;
  Attributes? get attributes => _attributes;
  Relationships? get relationships => _relationships;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    if (_relationships != null) {
      map['relationships'] = _relationships?.toJson();
    }
    return map;
  }

}


class Attributes {
  Attributes({
    String? createdAt,
    String? updatedAt,
    String? slug,
    String? synopsis,
    String? description,
    num? coverImageTopOffset,
    Titles? titles,
    String? canonicalTitle,
    List<String>? abbreviatedTitles,
    String? averageRating,
    dynamic ratingFrequencies,
    num? userCount,
    num? favoritesCount,
    String? startDate,
    dynamic endDate,
    String? nextRelease,
    num? popularityRank,
    num? ratingRank,
    String? ageRating,
    String? ageRatingGuide,
    String? subtype,
    String? status,
    dynamic tba,
    PosterImage? posterImage,
    CoverImage? coverImage,
    dynamic episodeCount,
    num? episodeLength,
    num? totalLength,
    String? youtubeVideoId,
    String? showType,
    bool? nsfw,}){
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _slug = slug;
    _synopsis = synopsis;
    _description = description;
    _coverImageTopOffset = coverImageTopOffset;
    _titles = titles;
    _canonicalTitle = canonicalTitle;
    _abbreviatedTitles = abbreviatedTitles;
    _averageRating = averageRating;
    _ratingFrequencies = ratingFrequencies;
    _userCount = userCount;
    _favoritesCount = favoritesCount;
    _startDate = startDate;
    _endDate = endDate;
    _nextRelease = nextRelease;
    _popularityRank = popularityRank;
    _ratingRank = ratingRank;
    _ageRating = ageRating;
    _ageRatingGuide = ageRatingGuide;
    _subtype = subtype;
    _status = status;
    _tba = tba;
    _posterImage = posterImage;
    _coverImage = coverImage;
    _episodeCount = episodeCount;
    _episodeLength = episodeLength;
    _totalLength = totalLength;
    _youtubeVideoId = youtubeVideoId;
    _showType = showType;
    _nsfw = nsfw;
  }

  Attributes.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _slug = json['slug'];
    _synopsis = json['synopsis'];
    _description = json['description'];
    _coverImageTopOffset = json['coverImageTopOffset'];
    _titles = json['titles'] != null ? Titles.fromJson(json['titles']) : null;
    _canonicalTitle = json['canonicalTitle'];
    _abbreviatedTitles = json['abbreviatedTitles'] != null ? json['abbreviatedTitles'].cast<String>() : [];
    _averageRating = json['averageRating'];
    _ratingFrequencies = json['ratingFrequencies'];
    _userCount = json['userCount'];
    _favoritesCount = json['favoritesCount'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _nextRelease = json['nextRelease'];
    _popularityRank = json['popularityRank'];
    _ratingRank = json['ratingRank'];
    _ageRating = json['ageRating'];
    _ageRatingGuide = json['ageRatingGuide'];
    _subtype = json['subtype'];
    _status = json['status'];
    _tba = json['tba'];
    _posterImage = json['posterImage'] != null ? PosterImage.fromJson(json['posterImage']) : null;
    _coverImage = json['coverImage'] != null ? CoverImage.fromJson(json['coverImage']) : null;
    _episodeCount = json['episodeCount'];
    _episodeLength = json['episodeLength'];
    _totalLength = json['totalLength'];
    _youtubeVideoId = json['youtubeVideoId'];
    _showType = json['showType'];
    _nsfw = json['nsfw'];
  }
  String? _createdAt;
  String? _updatedAt;
  String? _slug;
  String? _synopsis;
  String? _description;
  num? _coverImageTopOffset;
  Titles? _titles;
  String? _canonicalTitle;
  List<String>? _abbreviatedTitles;
  String? _averageRating;
  dynamic _ratingFrequencies;
  num? _userCount;
  num? _favoritesCount;
  String? _startDate;
  dynamic _endDate;
  String? _nextRelease;
  num? _popularityRank;
  num? _ratingRank;
  String? _ageRating;
  String? _ageRatingGuide;
  String? _subtype;
  String? _status;
  dynamic _tba;
  PosterImage? _posterImage;
  CoverImage? _coverImage;
  dynamic _episodeCount;
  num? _episodeLength;
  num? _totalLength;
  String? _youtubeVideoId;
  String? _showType;
  bool? _nsfw;
  Attributes copyWith({  String? createdAt,
    String? updatedAt,
    String? slug,
    String? synopsis,
    String? description,
    num? coverImageTopOffset,
    Titles? titles,
    String? canonicalTitle,
    List<String>? abbreviatedTitles,
    String? averageRating,
    dynamic ratingFrequencies,
    num? userCount,
    num? favoritesCount,
    String? startDate,
    dynamic endDate,
    String? nextRelease,
    num? popularityRank,
    num? ratingRank,
    String? ageRating,
    String? ageRatingGuide,
    String? subtype,
    String? status,
    dynamic tba,
    PosterImage? posterImage,
    CoverImage? coverImage,
    dynamic episodeCount,
    num? episodeLength,
    num? totalLength,
    String? youtubeVideoId,
    String? showType,
    bool? nsfw,
  }) => Attributes(  createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    slug: slug ?? _slug,
    synopsis: synopsis ?? _synopsis,
    description: description ?? _description,
    coverImageTopOffset: coverImageTopOffset ?? _coverImageTopOffset,
    titles: titles ?? _titles,
    canonicalTitle: canonicalTitle ?? _canonicalTitle,
    abbreviatedTitles: abbreviatedTitles ?? _abbreviatedTitles,
    averageRating: averageRating ?? _averageRating,
    ratingFrequencies: ratingFrequencies ?? _ratingFrequencies,
    userCount: userCount ?? _userCount,
    favoritesCount: favoritesCount ?? _favoritesCount,
    startDate: startDate ?? _startDate,
    endDate: endDate ?? _endDate,
    nextRelease: nextRelease ?? _nextRelease,
    popularityRank: popularityRank ?? _popularityRank,
    ratingRank: ratingRank ?? _ratingRank,
    ageRating: ageRating ?? _ageRating,
    ageRatingGuide: ageRatingGuide ?? _ageRatingGuide,
    subtype: subtype ?? _subtype,
    status: status ?? _status,
    tba: tba ?? _tba,
    posterImage: posterImage ?? _posterImage,
    coverImage: coverImage ?? _coverImage,
    episodeCount: episodeCount ?? _episodeCount,
    episodeLength: episodeLength ?? _episodeLength,
    totalLength: totalLength ?? _totalLength,
    youtubeVideoId: youtubeVideoId ?? _youtubeVideoId,
    showType: showType ?? _showType,
    nsfw: nsfw ?? _nsfw,
  );
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get slug => _slug;
  String? get synopsis => _synopsis;
  String? get description => _description;
  num? get coverImageTopOffset => _coverImageTopOffset;
  Titles? get titles => _titles;
  String? get canonicalTitle => _canonicalTitle;
  List<String>? get abbreviatedTitles => _abbreviatedTitles;
  String? get averageRating => _averageRating;
  dynamic get ratingFrequencies => _ratingFrequencies;
  num? get userCount => _userCount;
  num? get favoritesCount => _favoritesCount;
  String? get startDate => _startDate;
  dynamic get endDate => _endDate;
  String? get nextRelease => _nextRelease;
  num? get popularityRank => _popularityRank;
  num? get ratingRank => _ratingRank;
  String? get ageRating => _ageRating;
  String? get ageRatingGuide => _ageRatingGuide;
  String? get subtype => _subtype;
  String? get status => _status;
  dynamic get tba => _tba;
  PosterImage? get posterImage => _posterImage;
  CoverImage? get coverImage => _coverImage;
  dynamic get episodeCount => _episodeCount;
  num? get episodeLength => _episodeLength;
  num? get totalLength => _totalLength;
  String? get youtubeVideoId => _youtubeVideoId;
  String? get showType => _showType;
  bool? get nsfw => _nsfw;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['slug'] = _slug;
    map['synopsis'] = _synopsis;
    map['description'] = _description;
    map['coverImageTopOffset'] = _coverImageTopOffset;
    if (_titles != null) {
      map['titles'] = _titles?.toJson();
    }
    map['canonicalTitle'] = _canonicalTitle;
    map['abbreviatedTitles'] = _abbreviatedTitles;
    map['averageRating'] = _averageRating;
    map['ratingFrequencies'] = _ratingFrequencies;
    map['userCount'] = _userCount;
    map['favoritesCount'] = _favoritesCount;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['nextRelease'] = _nextRelease;
    map['popularityRank'] = _popularityRank;
    map['ratingRank'] = _ratingRank;
    map['ageRating'] = _ageRating;
    map['ageRatingGuide'] = _ageRatingGuide;
    map['subtype'] = _subtype;
    map['status'] = _status;
    map['tba'] = _tba;
    if (_posterImage != null) {
      map['posterImage'] = _posterImage?.toJson();
    }
    if (_coverImage != null) {
      map['coverImage'] = _coverImage?.toJson();
    }
    map['episodeCount'] = _episodeCount;
    map['episodeLength'] = _episodeLength;
    map['totalLength'] = _totalLength;
    map['youtubeVideoId'] = _youtubeVideoId;
    map['showType'] = _showType;
    map['nsfw'] = _nsfw;
    return map;
  }

}

class CoverImage {
  CoverImage({
    String? tiny,
    String? large,
    String? small,
    String? original,
    Meta? meta,}){
    _tiny = tiny;
    _large = large;
    _small = small;
    _original = original;
    _meta = meta;
  }

  CoverImage.fromJson(dynamic json) {
    _tiny = json['tiny'];
    _large = json['large'];
    _small = json['small'];
    _original = json['original'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  String? _tiny;
  String? _large;
  String? _small;
  String? _original;
  Meta? _meta;
  CoverImage copyWith({  String? tiny,
    String? large,
    String? small,
    String? original,
    Meta? meta,
  }) => CoverImage(  tiny: tiny ?? _tiny,
    large: large ?? _large,
    small: small ?? _small,
    original: original ?? _original,
    meta: meta ?? _meta,
  );
  String? get tiny => _tiny;
  String? get large => _large;
  String? get small => _small;
  String? get original => _original;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tiny'] = _tiny;
    map['large'] = _large;
    map['small'] = _small;
    map['original'] = _original;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}


class Titles {
  Titles({
    String? en,
    String? enJp,
    String? jaJp,}){
    _en = en;
    _enJp = enJp;
    _jaJp = jaJp;
  }

  Titles.fromJson(dynamic json) {
    _en = json['en'];
    _enJp = json['en_jp'];
    _jaJp = json['ja_jp'];
  }
  String? _en;
  String? _enJp;
  String? _jaJp;
  Titles copyWith({  String? en,
    String? enJp,
    String? jaJp,
  }) => Titles(  en: en ?? _en,
    enJp: enJp ?? _enJp,
    jaJp: jaJp ?? _jaJp,
  );
  String? get en => _en;
  String? get enJp => _enJp;
  String? get jaJp => _jaJp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['en_jp'] = _enJp;
    map['ja_jp'] = _jaJp;
    return map;
  }

}

class Meta {
  Meta({
    Dimensions? dimensions,}){
    _dimensions = dimensions;
  }

  Meta.fromJson(dynamic json) {
    _dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
  }
  Dimensions? _dimensions;
  Meta copyWith({  Dimensions? dimensions,
  }) => Meta(  dimensions: dimensions ?? _dimensions,
  );
  Dimensions? get dimensions => _dimensions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dimensions != null) {
      map['dimensions'] = _dimensions?.toJson();
    }
    return map;
  }

}


class Dimensions {
  Dimensions({
    Tiny? tiny,
    Large? large,
    Small? small,}){
    _tiny = tiny;
    _large = large;
    _small = small;
  }

  Dimensions.fromJson(dynamic json) {
    _tiny = json['tiny'] != null ? Tiny.fromJson(json['tiny']) : null;
    _large = json['large'] != null ? Large.fromJson(json['large']) : null;
    _small = json['small'] != null ? Small.fromJson(json['small']) : null;
  }
  Tiny? _tiny;
  Large? _large;
  Small? _small;
  Dimensions copyWith({  Tiny? tiny,
    Large? large,
    Small? small,
  }) => Dimensions(  tiny: tiny ?? _tiny,
    large: large ?? _large,
    small: small ?? _small,
  );
  Tiny? get tiny => _tiny;
  Large? get large => _large;
  Small? get small => _small;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tiny != null) {
      map['tiny'] = _tiny?.toJson();
    }
    if (_large != null) {
      map['large'] = _large?.toJson();
    }
    if (_small != null) {
      map['small'] = _small?.toJson();
    }
    return map;
  }

}

class Small {
  Small({
    num? width,
    num? height,}){
    _width = width;
    _height = height;
  }

  Small.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  num? _width;
  num? _height;
  Small copyWith({  num? width,
    num? height,
  }) => Small(  width: width ?? _width,
    height: height ?? _height,
  );
  num? get width => _width;
  num? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

/// width : 3360
/// height : 800

class Large {
  Large({
    num? width,
    num? height,}){
    _width = width;
    _height = height;
  }

  Large.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  num? _width;
  num? _height;
  Large copyWith({  num? width,
    num? height,
  }) => Large(  width: width ?? _width,
    height: height ?? _height,
  );
  num? get width => _width;
  num? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

/// width : 840
/// height : 200

class Tiny {
  Tiny({
    num? width,
    num? height,}){
    _width = width;
    _height = height;
  }

  Tiny.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  num? _width;
  num? _height;
  Tiny copyWith({  num? width,
    num? height,
  }) => Tiny(  width: width ?? _width,
    height: height ?? _height,
  );
  num? get width => _width;
  num? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

class PosterImage {
  PosterImage({
    String? tiny,
    String? large,
    String? small,
    String? medium,
    String? original,
    Meta? meta,}){
    _tiny = tiny;
    _large = large;
    _small = small;
    _medium = medium;
    _original = original;
    _meta = meta;
  }

  PosterImage.fromJson(dynamic json) {
    _tiny = json['tiny'];
    _large = json['large'];
    _small = json['small'];
    _medium = json['medium'];
    _original = json['original'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  String? _tiny;
  String? _large;
  String? _small;
  String? _medium;
  String? _original;
  Meta? _meta;
  PosterImage copyWith({  String? tiny,
    String? large,
    String? small,
    String? medium,
    String? original,
    Meta? meta,
  }) => PosterImage(  tiny: tiny ?? _tiny,
    large: large ?? _large,
    small: small ?? _small,
    medium: medium ?? _medium,
    original: original ?? _original,
    meta: meta ?? _meta,
  );
  String? get tiny => _tiny;
  String? get large => _large;
  String? get small => _small;
  String? get medium => _medium;
  String? get original => _original;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tiny'] = _tiny;
    map['large'] = _large;
    map['small'] = _small;
    map['medium'] = _medium;
    map['original'] = _original;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}



class Relationships {
  Relationships({
    Genres? genres,
    Categories? categories,
    Castings? castings,
    Installments? installments,
    Mappings? mappings,
    Reviews? reviews,
    MediaRelationships? mediaRelationships,
    Characters? characters,
    Staff? staff,
    Productions? productions,
    Quotes? quotes,
    Episodes? episodes,
    StreamingLinks? streamingLinks,
    AnimeProductions? animeProductions,
    AnimeCharacters? animeCharacters,
    AnimeStaff? animeStaff,}){
    _genres = genres;
    _categories = categories;
    _castings = castings;
    _installments = installments;
    _mappings = mappings;
    _reviews = reviews;
    _mediaRelationships = mediaRelationships;
    _characters = characters;
    _staff = staff;
    _productions = productions;
    _quotes = quotes;
    _episodes = episodes;
    _streamingLinks = streamingLinks;
    _animeProductions = animeProductions;
    _animeCharacters = animeCharacters;
    _animeStaff = animeStaff;
  }

  Relationships.fromJson(dynamic json) {
    _genres = json['genres'] != null ? Genres.fromJson(json['genres']) : null;
    _categories = json['categories'] != null ? Categories.fromJson(json['categories']) : null;
    _castings = json['castings'] != null ? Castings.fromJson(json['castings']) : null;
    _installments = json['installments'] != null ? Installments.fromJson(json['installments']) : null;
    _mappings = json['mappings'] != null ? Mappings.fromJson(json['mappings']) : null;
    _reviews = json['reviews'] != null ? Reviews.fromJson(json['reviews']) : null;
    _mediaRelationships = json['mediaRelationships'] != null ? MediaRelationships.fromJson(json['mediaRelationships']) : null;
    _characters = json['characters'] != null ? Characters.fromJson(json['characters']) : null;
    _staff = json['staff'] != null ? Staff.fromJson(json['staff']) : null;
    _productions = json['productions'] != null ? Productions.fromJson(json['productions']) : null;
    _quotes = json['quotes'] != null ? Quotes.fromJson(json['quotes']) : null;
    _episodes = json['episodes'] != null ? Episodes.fromJson(json['episodes']) : null;
    _streamingLinks = json['streamingLinks'] != null ? StreamingLinks.fromJson(json['streamingLinks']) : null;
    _animeProductions = json['animeProductions'] != null ? AnimeProductions.fromJson(json['animeProductions']) : null;
    _animeCharacters = json['animeCharacters'] != null ? AnimeCharacters.fromJson(json['animeCharacters']) : null;
    _animeStaff = json['animeStaff'] != null ? AnimeStaff.fromJson(json['animeStaff']) : null;
  }
  Genres? _genres;
  Categories? _categories;
  Castings? _castings;
  Installments? _installments;
  Mappings? _mappings;
  Reviews? _reviews;
  MediaRelationships? _mediaRelationships;
  Characters? _characters;
  Staff? _staff;
  Productions? _productions;
  Quotes? _quotes;
  Episodes? _episodes;
  StreamingLinks? _streamingLinks;
  AnimeProductions? _animeProductions;
  AnimeCharacters? _animeCharacters;
  AnimeStaff? _animeStaff;
  Relationships copyWith({  Genres? genres,
    Categories? categories,
    Castings? castings,
    Installments? installments,
    Mappings? mappings,
    Reviews? reviews,
    MediaRelationships? mediaRelationships,
    Characters? characters,
    Staff? staff,
    Productions? productions,
    Quotes? quotes,
    Episodes? episodes,
    StreamingLinks? streamingLinks,
    AnimeProductions? animeProductions,
    AnimeCharacters? animeCharacters,
    AnimeStaff? animeStaff,
  }) => Relationships(  genres: genres ?? _genres,
    categories: categories ?? _categories,
    castings: castings ?? _castings,
    installments: installments ?? _installments,
    mappings: mappings ?? _mappings,
    reviews: reviews ?? _reviews,
    mediaRelationships: mediaRelationships ?? _mediaRelationships,
    characters: characters ?? _characters,
    staff: staff ?? _staff,
    productions: productions ?? _productions,
    quotes: quotes ?? _quotes,
    episodes: episodes ?? _episodes,
    streamingLinks: streamingLinks ?? _streamingLinks,
    animeProductions: animeProductions ?? _animeProductions,
    animeCharacters: animeCharacters ?? _animeCharacters,
    animeStaff: animeStaff ?? _animeStaff,
  );
  Genres? get genres => _genres;
  Categories? get categories => _categories;
  Castings? get castings => _castings;
  Installments? get installments => _installments;
  Mappings? get mappings => _mappings;
  Reviews? get reviews => _reviews;
  MediaRelationships? get mediaRelationships => _mediaRelationships;
  Characters? get characters => _characters;
  Staff? get staff => _staff;
  Productions? get productions => _productions;
  Quotes? get quotes => _quotes;
  Episodes? get episodes => _episodes;
  StreamingLinks? get streamingLinks => _streamingLinks;
  AnimeProductions? get animeProductions => _animeProductions;
  AnimeCharacters? get animeCharacters => _animeCharacters;
  AnimeStaff? get animeStaff => _animeStaff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_genres != null) {
      map['genres'] = _genres?.toJson();
    }
    if (_categories != null) {
      map['categories'] = _categories?.toJson();
    }
    if (_castings != null) {
      map['castings'] = _castings?.toJson();
    }
    if (_installments != null) {
      map['installments'] = _installments?.toJson();
    }
    if (_mappings != null) {
      map['mappings'] = _mappings?.toJson();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.toJson();
    }
    if (_mediaRelationships != null) {
      map['mediaRelationships'] = _mediaRelationships?.toJson();
    }
    if (_characters != null) {
      map['characters'] = _characters?.toJson();
    }
    if (_staff != null) {
      map['staff'] = _staff?.toJson();
    }
    if (_productions != null) {
      map['productions'] = _productions?.toJson();
    }
    if (_quotes != null) {
      map['quotes'] = _quotes?.toJson();
    }
    if (_episodes != null) {
      map['episodes'] = _episodes?.toJson();
    }
    if (_streamingLinks != null) {
      map['streamingLinks'] = _streamingLinks?.toJson();
    }
    if (_animeProductions != null) {
      map['animeProductions'] = _animeProductions?.toJson();
    }
    if (_animeCharacters != null) {
      map['animeCharacters'] = _animeCharacters?.toJson();
    }
    if (_animeStaff != null) {
      map['animeStaff'] = _animeStaff?.toJson();
    }
    return map;
  }

}

class Links {
  Links({
    String? self,
    String? related,}){
    _self = self;
    _related = related;
  }

  Links.fromJson(dynamic json) {
    _self = json['self'];
    _related = json['related'];
  }
  String? _self;
  String? _related;
  Links copyWith({  String? self,
    String? related,
  }) => Links(  self: self ?? _self,
    related: related ?? _related,
  );
  String? get self => _self;
  String? get related => _related;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = _self;
    map['related'] = _related;
    return map;
  }

}


class AnimeStaff {
  AnimeStaff({
    Links? links,}){
    _links = links;
  }

  AnimeStaff.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  AnimeStaff copyWith({  Links? links,
  }) => AnimeStaff(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


class AnimeCharacters {
  AnimeCharacters({
    Links? links,}){
    _links = links;
  }

  AnimeCharacters.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  AnimeCharacters copyWith({  Links? links,
  }) => AnimeCharacters(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



class AnimeProductions {
  AnimeProductions({
    Links? links,}){
    _links = links;
  }

  AnimeProductions.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  AnimeProductions copyWith({  Links? links,
  }) => AnimeProductions(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class StreamingLinks {
  StreamingLinks({
    Links? links,}){
    _links = links;
  }

  StreamingLinks.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  StreamingLinks copyWith({  Links? links,
  }) => StreamingLinks(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




/// links : {"self":"https://kitsu.io/api/edge/anime/12/relationships/episodes","related":"https://kitsu.io/api/edge/anime/12/episodes"}

class Episodes {
  Episodes({
    Links? links,}){
    _links = links;
  }

  Episodes.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Episodes copyWith({  Links? links,
  }) => Episodes(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


class Quotes {
  Quotes({
    Links? links,}){
    _links = links;
  }

  Quotes.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Quotes copyWith({  Links? links,
  }) => Quotes(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



class Productions {
  Productions({
    Links? links,}){
    _links = links;
  }

  Productions.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Productions copyWith({  Links? links,
  }) => Productions(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}





class Staff {
  Staff({
    Links? links,}){
    _links = links;
  }

  Staff.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Staff copyWith({  Links? links,
  }) => Staff(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class Characters {
  Characters({
    Links? links,}){
    _links = links;
  }

  Characters.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Characters copyWith({  Links? links,
  }) => Characters(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



class MediaRelationships {
  MediaRelationships({
    Links? links,}){
    _links = links;
  }

  MediaRelationships.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  MediaRelationships copyWith({  Links? links,
  }) => MediaRelationships(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class Reviews {
  Reviews({
    Links? links,}){
    _links = links;
  }

  Reviews.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Reviews copyWith({  Links? links,
  }) => Reviews(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}





class Mappings {
  Mappings({
    Links? links,}){
    _links = links;
  }

  Mappings.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Mappings copyWith({  Links? links,
  }) => Mappings(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class Installments {
  Installments({
    Links? links,}){
    _links = links;
  }

  Installments.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Installments copyWith({  Links? links,
  }) => Installments(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class Castings {
  Castings({
    Links? links,}){
    _links = links;
  }

  Castings.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Castings copyWith({  Links? links,
  }) => Castings(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}




class Categories {
  Categories({
    Links? links,}){
    _links = links;
  }

  Categories.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Categories copyWith({  Links? links,
  }) => Categories(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}





class Genres {
  Genres({
    Links? links,}){
    _links = links;
  }

  Genres.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;
  Genres copyWith({  Links? links,
  }) => Genres(  links: links ?? _links,
  );
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


