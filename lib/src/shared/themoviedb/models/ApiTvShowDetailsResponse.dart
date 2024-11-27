import 'dart:convert';
/// adult : false
/// backdrop_path : "/gc8PfyTqzqltKPW3X0cIVUGmagz.jpg"
/// created_by : [{"id":66633,"credit_id":"52542286760ee31328001a7b","name":"Vince Gilligan","original_name":"Vince Gilligan","gender":2,"profile_path":"/z3E0DhBg1V1PZVEtS9vfFPzOWYB.jpg"}]
/// episode_run_time : []
/// first_air_date : "2008-01-20"
/// genres : [{"id":18,"name":"Drama"},{"id":80,"name":"Crime"}]
/// homepage : "https://www.sonypictures.com/tv/breakingbad"
/// id : 1396
/// in_production : false
/// languages : ["en","de","es"]
/// last_air_date : "2013-09-29"
/// last_episode_to_air : {"id":62161,"name":"Felina","overview":"All bad things must come to an end.","vote_average":9.225,"vote_count":220,"air_date":"2013-09-29","episode_number":16,"episode_type":"finale","production_code":"","runtime":56,"season_number":5,"show_id":1396,"still_path":"/pA0YwyhvdDXP3BEGL2grrIhq8aM.jpg"}
/// name : "Breaking Bad"
/// next_episode_to_air : null
/// networks : [{"id":174,"logo_path":"/alqLicR1ZMHMaZGP3xRQxn9sq7p.png","name":"AMC","origin_country":"US"}]
/// number_of_episodes : 62
/// number_of_seasons : 5
/// origin_country : ["US"]
/// original_language : "en"
/// original_name : "Breaking Bad"
/// overview : "Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live. He becomes filled with a sense of fearlessness and an unrelenting desire to secure his family's financial future at any cost as he enters the dangerous world of drugs and crime."
/// popularity : 560.525
/// poster_path : "/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg"
/// production_companies : [{"id":11073,"logo_path":"/aCbASRcI1MI7DXjPbSW9Fcv9uGR.png","name":"Sony Pictures Television","origin_country":"US"},{"id":33742,"logo_path":null,"name":"High Bridge Productions","origin_country":"US"},{"id":2605,"logo_path":null,"name":"Gran Via Productions","origin_country":"US"}]
/// production_countries : [{"iso_3166_1":"US","name":"United States of America"}]
/// seasons : [{"air_date":"2009-02-17","episode_count":9,"id":3577,"name":"Specials","overview":"","poster_path":"/40dT79mDEZwXkQiZNBgSaydQFDP.jpg","season_number":0,"vote_average":0.0},{"air_date":"2008-01-20","episode_count":7,"id":3572,"name":"Season 1","overview":"High school chemistry teacher Walter White's life is suddenly transformed by a dire medical diagnosis. Street-savvy former student Jesse Pinkman \"teaches\" Walter a new trade.","poster_path":"/1BP4xYv9ZG4ZVHkL7ocOziBbSYH.jpg","season_number":1,"vote_average":8.3},{"air_date":"2009-03-08","episode_count":13,"id":3573,"name":"Season 2","overview":"Walt must deal with the chain reaction of his choice, as he and Jesse face new and severe consequences. When danger and suspicion around Walt escalate, he is pushed to new levels of desperation. Just how much higher will the stakes rise? How far is Walt willing to go to ensure his family's security? Will his grand plan spiral out of control?","poster_path":"/e3oGYpoTUhOFK0BJfloru5ZmGV.jpg","season_number":2,"vote_average":8.4},{"air_date":"2010-03-21","episode_count":13,"id":3575,"name":"Season 3","overview":"Walt continues to battle dueling identities: a desperate husband and father trying to provide for his family, and a newly appointed key player in the Albuquerque drug trade. As the danger around him escalates, Walt is now entrenched in the complex worlds of an angst-ridden family on the verge of dissolution, and the ruthless and unrelenting drug cartel.","poster_path":"/ffP8Q8ew048YofHRnFVM18B2fPG.jpg","season_number":3,"vote_average":8.4},{"air_date":"2011-07-17","episode_count":13,"id":3576,"name":"Season 4","overview":"Walt and Jesse must cope with the fallout of their previous actions, both personally and professionally. Tension mounts as Walt faces a true standoff with his employer, Gus, with neither side willing or able to back down. Walt must also adjust to a new relationship with Skyler, whom while still reconciling her relationship with Walt, is committed to properly laundering Walt’s money and ensuring her sister Marie and an ailing Hank are financially stable.","poster_path":"/5p7WduYlIIFjVYUIsqRZLFYWjMc.jpg","season_number":4,"vote_average":8.6},{"air_date":"2012-07-15","episode_count":16,"id":3578,"name":"Season 5","overview":"Walt is faced with the prospect of moving on in a world without his enemy. As the pressure of a criminal life starts to build, Skyler struggles to keep Walt’s terrible secrets. Facing resistance from sometime adversary and former Fring lieutenant Mike, Walt tries to keep his world from falling apart even as his DEA Agent brother in law, Hank, finds numerous leads that could blaze a path straight to Walt. ","poster_path":"/r3z70vunihrAkjILQKWHX0G2xzO.jpg","season_number":5,"vote_average":8.9}]
/// spoken_languages : [{"english_name":"English","iso_639_1":"en","name":"English"},{"english_name":"German","iso_639_1":"de","name":"Deutsch"},{"english_name":"Spanish","iso_639_1":"es","name":"Español"}]
/// status : "Ended"
/// tagline : "Change the equation."
/// type : "Scripted"
/// vote_average : 8.917
/// vote_count : 14521

ApiTvShowDetailsResponse apiTvShowDetailsResponseFromJson(String str) => ApiTvShowDetailsResponse.fromJson(json.decode(str));
String apiTvShowDetailsResponseToJson(ApiTvShowDetailsResponse data) => json.encode(data.toJson());
class ApiTvShowDetailsResponse {
  ApiTvShowDetailsResponse({
      bool? adult, 
      String? backdropPath, 
      List<CreatedBy>? createdBy, 
      List<dynamic>? episodeRunTime, 
      String? firstAirDate, 
      List<Genres>? genres, 
      String? homepage, 
      num? id, 
      bool? inProduction, 
      List<String>? languages, 
      String? lastAirDate, 
      LastEpisodeToAir? lastEpisodeToAir, 
      String? name, 
      dynamic nextEpisodeToAir, 
      List<Networks>? networks, 
      num? numberOfEpisodes, 
      num? numberOfSeasons, 
      List<String>? originCountry, 
      String? originalLanguage, 
      String? originalName, 
      String? overview, 
      num? popularity, 
      String? posterPath, 
      List<ProductionCompanies>? productionCompanies, 
      List<ProductionCountries>? productionCountries, 
      List<Seasons>? seasons, 
      List<SpokenLanguages>? spokenLanguages, 
      String? status, 
      String? tagline, 
      String? type, 
      num? voteAverage, 
      num? voteCount,}){
    _adult = adult;
    _backdropPath = backdropPath;
    _createdBy = createdBy;
    _episodeRunTime = episodeRunTime;
    _firstAirDate = firstAirDate;
    _genres = genres;
    _homepage = homepage;
    _id = id;
    _inProduction = inProduction;
    _languages = languages;
    _lastAirDate = lastAirDate;
    _lastEpisodeToAir = lastEpisodeToAir;
    _name = name;
    _nextEpisodeToAir = nextEpisodeToAir;
    _networks = networks;
    _numberOfEpisodes = numberOfEpisodes;
    _numberOfSeasons = numberOfSeasons;
    _originCountry = originCountry;
    _originalLanguage = originalLanguage;
    _originalName = originalName;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _productionCompanies = productionCompanies;
    _productionCountries = productionCountries;
    _seasons = seasons;
    _spokenLanguages = spokenLanguages;
    _status = status;
    _tagline = tagline;
    _type = type;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  ApiTvShowDetailsResponse.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    if (json['created_by'] != null) {
      _createdBy = [];
      json['created_by'].forEach((v) {
        _createdBy?.add(CreatedBy.fromJson(v));
      });
    }
    if (json['episode_run_time'] != null) {
      _episodeRunTime = [];
      json['episode_run_time'].forEach((v) {
        _episodeRunTime?.add(v);
      });
    }
    _firstAirDate = json['first_air_date'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    _homepage = json['homepage'];
    _id = json['id'];
    _inProduction = json['in_production'];
    _languages = json['languages'] != null ? json['languages'].cast<String>() : [];
    _lastAirDate = json['last_air_date'];
    _lastEpisodeToAir = json['last_episode_to_air'] != null ? LastEpisodeToAir.fromJson(json['last_episode_to_air']) : null;
    _name = json['name'];
    _nextEpisodeToAir = json['next_episode_to_air'];
    if (json['networks'] != null) {
      _networks = [];
      json['networks'].forEach((v) {
        _networks?.add(Networks.fromJson(v));
      });
    }
    _numberOfEpisodes = json['number_of_episodes'];
    _numberOfSeasons = json['number_of_seasons'];
    _originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() : [];
    _originalLanguage = json['original_language'];
    _originalName = json['original_name'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      _productionCompanies = [];
      json['production_companies'].forEach((v) {
        _productionCompanies?.add(ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      _productionCountries = [];
      json['production_countries'].forEach((v) {
        _productionCountries?.add(ProductionCountries.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      _seasons = [];
      json['seasons'].forEach((v) {
        _seasons?.add(Seasons.fromJson(v,showId: _id.toString()));
      });
    }
    if (json['spoken_languages'] != null) {
      _spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        _spokenLanguages?.add(SpokenLanguages.fromJson(v));
      });
    }
    _status = json['status'];
    _tagline = json['tagline'];
    _type = json['type'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }
  bool? _adult;
  String? _backdropPath;
  List<CreatedBy>? _createdBy;
  List<dynamic>? _episodeRunTime;
  String? _firstAirDate;
  List<Genres>? _genres;
  String? _homepage;
  num? _id;
  bool? _inProduction;
  List<String>? _languages;
  String? _lastAirDate;
  LastEpisodeToAir? _lastEpisodeToAir;
  String? _name;
  dynamic _nextEpisodeToAir;
  List<Networks>? _networks;
  num? _numberOfEpisodes;
  num? _numberOfSeasons;
  List<String>? _originCountry;
  String? _originalLanguage;
  String? _originalName;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  List<ProductionCompanies>? _productionCompanies;
  List<ProductionCountries>? _productionCountries;
  List<Seasons>? _seasons;
  List<SpokenLanguages>? _spokenLanguages;
  String? _status;
  String? _tagline;
  String? _type;
  num? _voteAverage;
  num? _voteCount;

  bool? get adult => _adult;
  // String? get backdropPath => _backdropPath;
  String? get backdropPath => "https://image.tmdb.org/t/p/w780$_backdropPath";
  List<CreatedBy>? get createdBy => _createdBy;
  List<dynamic>? get episodeRunTime => _episodeRunTime;
  String? get firstAirDate => _firstAirDate;
  List<Genres>? get genres => _genres;
  String? get homepage => _homepage;
  num? get id => _id;
  bool? get inProduction => _inProduction;
  List<String>? get languages => _languages;
  String? get lastAirDate => _lastAirDate;
  LastEpisodeToAir? get lastEpisodeToAir => _lastEpisodeToAir;
  String? get name => _name;
  dynamic get nextEpisodeToAir => _nextEpisodeToAir;
  List<Networks>? get networks => _networks;
  num? get numberOfEpisodes => _numberOfEpisodes;
  num? get numberOfSeasons => _numberOfSeasons;
  List<String>? get originCountry => _originCountry;
  String? get originalLanguage => _originalLanguage;
  String? get originalName => _originalName;
  String? get overview => _overview;
  num? get popularity => _popularity;
  // String? get posterPath => _posterPath;
  String? get posterPath => "https://image.tmdb.org/t/p/w500$_posterPath";
  List<ProductionCompanies>? get productionCompanies => _productionCompanies;
  List<ProductionCountries>? get productionCountries => _productionCountries;
  List<Seasons>? get seasons => _seasons;
  List<SpokenLanguages>? get spokenLanguages => _spokenLanguages;
  String? get status => _status;
  String? get tagline => _tagline;
  String? get type => _type;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    if (_createdBy != null) {
      map['created_by'] = _createdBy?.map((v) => v.toJson()).toList();
    }
    if (_episodeRunTime != null) {
      map['episode_run_time'] = _episodeRunTime?.map((v) => v.toJson()).toList();
    }
    map['first_air_date'] = _firstAirDate;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = _homepage;
    map['id'] = _id;
    map['in_production'] = _inProduction;
    map['languages'] = _languages;
    map['last_air_date'] = _lastAirDate;
    if (_lastEpisodeToAir != null) {
      map['last_episode_to_air'] = _lastEpisodeToAir?.toJson();
    }
    map['name'] = _name;
    map['next_episode_to_air'] = _nextEpisodeToAir;
    if (_networks != null) {
      map['networks'] = _networks?.map((v) => v.toJson()).toList();
    }
    map['number_of_episodes'] = _numberOfEpisodes;
    map['number_of_seasons'] = _numberOfSeasons;
    map['origin_country'] = _originCountry;
    map['original_language'] = _originalLanguage;
    map['original_name'] = _originalName;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    if (_productionCompanies != null) {
      map['production_companies'] = _productionCompanies?.map((v) => v.toJson()).toList();
    }
    if (_productionCountries != null) {
      map['production_countries'] = _productionCountries?.map((v) => v.toJson()).toList();
    }
    if (_seasons != null) {
      map['seasons'] = _seasons?.map((v) => v.toJson()).toList();
    }
    if (_spokenLanguages != null) {
      map['spoken_languages'] = _spokenLanguages?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['tagline'] = _tagline;
    map['type'] = _type;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

}

/// english_name : "English"
/// iso_639_1 : "en"
/// name : "English"

SpokenLanguages spokenLanguagesFromJson(String str) => SpokenLanguages.fromJson(json.decode(str));
String spokenLanguagesToJson(SpokenLanguages data) => json.encode(data.toJson());
class SpokenLanguages {
  SpokenLanguages({
      String? englishName, 
      String? iso6391, 
      String? name,}){
    _englishName = englishName;
    _iso6391 = iso6391;
    _name = name;
}

  SpokenLanguages.fromJson(dynamic json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }
  String? _englishName;
  String? _iso6391;
  String? _name;

  String? get englishName => _englishName;
  String? get iso6391 => _iso6391;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = _englishName;
    map['iso_639_1'] = _iso6391;
    map['name'] = _name;
    return map;
  }

}

/// air_date : "2009-02-17"
/// episode_count : 9
/// id : 3577
/// name : "Specials"
/// overview : ""
/// poster_path : "/40dT79mDEZwXkQiZNBgSaydQFDP.jpg"
/// season_number : 0
/// vote_average : 0.0

Seasons seasonsFromJson(String str) => Seasons.fromJson(json.decode(str));
String seasonsToJson(Seasons data) => json.encode(data.toJson());
class Seasons {
  Seasons({
      String? airDate, 
      num? episodeCount, 
      num? id, 
      String? name, 
      String? overview, 
      String? posterPath, 
      String? showId,
      num? seasonNumber,
      num? voteAverage,}){
    _airDate = airDate;
    _episodeCount = episodeCount;
    _id = id;
    _name = name;
    _overview = overview;
    _posterPath = posterPath;
    _seasonNumber = seasonNumber;
    _voteAverage = voteAverage;
    _showId = showId;
}

  Seasons.fromJson(dynamic json,{String? showId}) {
    _airDate = json['air_date'];
    _episodeCount = json['episode_count'];
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _seasonNumber = json['season_number'];
    _voteAverage = json['vote_average'];
    _showId=showId;
  }
  String? _airDate;
  num? _episodeCount;
  num? _id;
  String? _name;
  String? _overview;
  String? _posterPath;
  String? _showId;
  num? _seasonNumber;
  num? _voteAverage;

  String? get airDate => _airDate;
  num? get episodeCount => _episodeCount;
  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  String? get posterPath => _posterPath;
  String? get urlPath => "https://api.themoviedb.org/3/tv/$_showId/season/$_seasonNumber";
  String? get image => "https://image.tmdb.org/t/p/w500$_posterPath";
  num? get seasonNumber => _seasonNumber;
  num? get voteAverage => _voteAverage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date'] = _airDate;
    map['episode_count'] = _episodeCount;
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['season_number'] = _seasonNumber;
    map['vote_average'] = _voteAverage;
    return map;
  }

}

/// iso_3166_1 : "US"
/// name : "United States of America"

ProductionCountries productionCountriesFromJson(String str) => ProductionCountries.fromJson(json.decode(str));
String productionCountriesToJson(ProductionCountries data) => json.encode(data.toJson());
class ProductionCountries {
  ProductionCountries({
      String? iso31661, 
      String? name,}){
    _iso31661 = iso31661;
    _name = name;
}

  ProductionCountries.fromJson(dynamic json) {
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
  }
  String? _iso31661;
  String? _name;

  String? get iso31661 => _iso31661;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    return map;
  }

}

/// id : 11073
/// logo_path : "/aCbASRcI1MI7DXjPbSW9Fcv9uGR.png"
/// name : "Sony Pictures Television"
/// origin_country : "US"

ProductionCompanies productionCompaniesFromJson(String str) => ProductionCompanies.fromJson(json.decode(str));
String productionCompaniesToJson(ProductionCompanies data) => json.encode(data.toJson());
class ProductionCompanies {
  ProductionCompanies({
      num? id, 
      String? logoPath, 
      String? name, 
      String? originCountry,}){
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
}

  ProductionCompanies.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;

  num? get id => _id;
  String? get logoPath => _logoPath;
  String? get name => _name;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }

}

/// id : 174
/// logo_path : "/alqLicR1ZMHMaZGP3xRQxn9sq7p.png"
/// name : "AMC"
/// origin_country : "US"

Networks networksFromJson(String str) => Networks.fromJson(json.decode(str));
String networksToJson(Networks data) => json.encode(data.toJson());
class Networks {
  Networks({
      num? id, 
      String? logoPath, 
      String? name, 
      String? originCountry,}){
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
}

  Networks.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }
  num? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;

  num? get id => _id;
  String? get logoPath => _logoPath;
  String? get name => _name;
  String? get originCountry => _originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }

}

/// id : 62161
/// name : "Felina"
/// overview : "All bad things must come to an end."
/// vote_average : 9.225
/// vote_count : 220
/// air_date : "2013-09-29"
/// episode_number : 16
/// episode_type : "finale"
/// production_code : ""
/// runtime : 56
/// season_number : 5
/// show_id : 1396
/// still_path : "/pA0YwyhvdDXP3BEGL2grrIhq8aM.jpg"

LastEpisodeToAir lastEpisodeToAirFromJson(String str) => LastEpisodeToAir.fromJson(json.decode(str));
String lastEpisodeToAirToJson(LastEpisodeToAir data) => json.encode(data.toJson());
class LastEpisodeToAir {
  LastEpisodeToAir({
      num? id, 
      String? name, 
      String? overview, 
      num? voteAverage, 
      num? voteCount, 
      String? airDate, 
      num? episodeNumber, 
      String? episodeType, 
      String? productionCode, 
      num? runtime, 
      num? seasonNumber, 
      num? showId, 
      String? stillPath,}){
    _id = id;
    _name = name;
    _overview = overview;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _airDate = airDate;
    _episodeNumber = episodeNumber;
    _episodeType = episodeType;
    _productionCode = productionCode;
    _runtime = runtime;
    _seasonNumber = seasonNumber;
    _showId = showId;
    _stillPath = stillPath;
}

  LastEpisodeToAir.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _overview = json['overview'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _airDate = json['air_date'];
    _episodeNumber = json['episode_number'];
    _episodeType = json['episode_type'];
    _productionCode = json['production_code'];
    _runtime = json['runtime'];
    _seasonNumber = json['season_number'];
    _showId = json['show_id'];
    _stillPath = json['still_path'];
  }
  num? _id;
  String? _name;
  String? _overview;
  num? _voteAverage;
  num? _voteCount;
  String? _airDate;
  num? _episodeNumber;
  String? _episodeType;
  String? _productionCode;
  num? _runtime;
  num? _seasonNumber;
  num? _showId;
  String? _stillPath;

  num? get id => _id;
  String? get name => _name;
  String? get overview => _overview;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;
  String? get airDate => _airDate;
  num? get episodeNumber => _episodeNumber;
  String? get episodeType => _episodeType;
  String? get productionCode => _productionCode;
  num? get runtime => _runtime;
  num? get seasonNumber => _seasonNumber;
  num? get showId => _showId;
  String? get stillPath => _stillPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['overview'] = _overview;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['air_date'] = _airDate;
    map['episode_number'] = _episodeNumber;
    map['episode_type'] = _episodeType;
    map['production_code'] = _productionCode;
    map['runtime'] = _runtime;
    map['season_number'] = _seasonNumber;
    map['show_id'] = _showId;
    map['still_path'] = _stillPath;
    return map;
  }

}

/// id : 18
/// name : "Drama"

Genres genresFromJson(String str) => Genres.fromJson(json.decode(str));
String genresToJson(Genres data) => json.encode(data.toJson());
class Genres {
  Genres({
      num? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Genres.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;

  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}

/// id : 66633
/// credit_id : "52542286760ee31328001a7b"
/// name : "Vince Gilligan"
/// original_name : "Vince Gilligan"
/// gender : 2
/// profile_path : "/z3E0DhBg1V1PZVEtS9vfFPzOWYB.jpg"

CreatedBy createdByFromJson(String str) => CreatedBy.fromJson(json.decode(str));
String createdByToJson(CreatedBy data) => json.encode(data.toJson());
class CreatedBy {
  CreatedBy({
      num? id, 
      String? creditId, 
      String? name, 
      String? originalName, 
      num? gender, 
      String? profilePath,}){
    _id = id;
    _creditId = creditId;
    _name = name;
    _originalName = originalName;
    _gender = gender;
    _profilePath = profilePath;
}

  CreatedBy.fromJson(dynamic json) {
    _id = json['id'];
    _creditId = json['credit_id'];
    _name = json['name'];
    _originalName = json['original_name'];
    _gender = json['gender'];
    _profilePath = json['profile_path'];
  }
  num? _id;
  String? _creditId;
  String? _name;
  String? _originalName;
  num? _gender;
  String? _profilePath;

  num? get id => _id;
  String? get creditId => _creditId;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get gender => _gender;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['credit_id'] = _creditId;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['gender'] = _gender;
    map['profile_path'] = _profilePath;
    return map;
  }

}