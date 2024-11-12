import 'dart:convert';
/// relateds : [{"id":8,"name":"الثمانية","poster_path":"https://image.tmdb.org/t/p/w500/rlx0lZdXW5DdzBdXJJse9hwF4M0.jpg","vote_average":0,"newEpisodes":0,"subtitle":null,"genreslist":["حركة ومغامرة","دراما"]},{"id":9,"name":"منعطف خطر","poster_path":"https://image.tmdb.org/t/p/w500/nCdjojg1qAPnYPkYD2trC3oTaRU.jpg","vote_average":9,"newEpisodes":0,"subtitle":null,"genreslist":["جريمة","دراما"]},{"id":11,"name":"وش وضهر","poster_path":"https://image.tmdb.org/t/p/w500/A6AYfdsyZXtFrWP8V89FWzrZJeE.jpg","vote_average":6,"newEpisodes":0,"subtitle":null,"genreslist":["دراما"]},{"id":13,"name":"مين قال؟","poster_path":"https://image.tmdb.org/t/p/w500/5gqzqHHTkh1NzpYZNmKl78x1N7C.jpg","vote_average":0,"newEpisodes":0,"subtitle":null,"genreslist":["دراما"]},{"id":14,"name":"الجسر","poster_path":"https://image.tmdb.org/t/p/w500/xar1mmEH1M51R8l7Ii7P68G2HSu.jpg","vote_average":5,"newEpisodes":0,"subtitle":null,"genreslist":["دراما","غموض","حركة ومغامرة"]},{"id":17,"name":"في كل أسبوع يوم جمعة","poster_path":"https://image.tmdb.org/t/p/w500/gh1WR0bkAepjWAwL7snznHoh6Cj.jpg","vote_average":8.8,"newEpisodes":0,"subtitle":null,"genreslist":["دراما","جريمة","غموض"]}]

SeriesRelatedsApiResponseModel seriesRelatedsApiResponseModelFromJson(String str) => SeriesRelatedsApiResponseModel.fromJson(json.decode(str));
String seriesRelatedsApiResponseModelToJson(SeriesRelatedsApiResponseModel data) => json.encode(data.toJson());
class SeriesRelatedsApiResponseModel {
  SeriesRelatedsApiResponseModel({
      List<Relateds>? relateds,}){
    _relateds = relateds;
}

  SeriesRelatedsApiResponseModel.fromJson(dynamic json) {
    if (json['relateds'] != null) {
      _relateds = [];
      json['relateds'].forEach((v) {
        _relateds?.add(Relateds.fromJson(v));
      });
    }
  }
  List<Relateds>? _relateds;
SeriesRelatedsApiResponseModel copyWith({  List<Relateds>? relateds,
}) => SeriesRelatedsApiResponseModel(  relateds: relateds ?? _relateds,
);
  List<Relateds>? get relateds => _relateds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_relateds != null) {
      map['relateds'] = _relateds?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 8
/// name : "الثمانية"
/// poster_path : "https://image.tmdb.org/t/p/w500/rlx0lZdXW5DdzBdXJJse9hwF4M0.jpg"
/// vote_average : 0
/// newEpisodes : 0
/// subtitle : null
/// genreslist : ["حركة ومغامرة","دراما"]

Relateds relatedsFromJson(String str) => Relateds.fromJson(json.decode(str));
String relatedsToJson(Relateds data) => json.encode(data.toJson());
class Relateds {
  Relateds({
      num? id, 
      String? name, 
      String? posterPath, 
      num? voteAverage, 
      num? newEpisodes, 
      dynamic subtitle, 
      List<String>? genreslist,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _newEpisodes = newEpisodes;
    _subtitle = subtitle;
    _genreslist = genreslist;
}

  Relateds.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _newEpisodes = json['newEpisodes'];
    _subtitle = json['subtitle'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
  }
  num? _id;
  String? _name;
  String? _posterPath;
  num? _voteAverage;
  num? _newEpisodes;
  dynamic _subtitle;
  List<String>? _genreslist;
Relateds copyWith({  num? id,
  String? name,
  String? posterPath,
  num? voteAverage,
  num? newEpisodes,
  dynamic subtitle,
  List<String>? genreslist,
}) => Relateds(  id: id ?? _id,
  name: name ?? _name,
  posterPath: posterPath ?? _posterPath,
  voteAverage: voteAverage ?? _voteAverage,
  newEpisodes: newEpisodes ?? _newEpisodes,
  subtitle: subtitle ?? _subtitle,
  genreslist: genreslist ?? _genreslist,
);
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  num? get newEpisodes => _newEpisodes;
  dynamic get subtitle => _subtitle;
  List<String>? get genreslist => _genreslist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['newEpisodes'] = _newEpisodes;
    map['subtitle'] = _subtitle;
    map['genreslist'] = _genreslist;
    return map;
  }

}