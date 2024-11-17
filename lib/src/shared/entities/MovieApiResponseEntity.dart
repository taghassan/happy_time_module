import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';
/// title : "Frankie Freako"
/// id : 27171
/// poster_path : "https://image.tmdb.org/t/p/w500/8xjOFXj0CHy5Mp6Wfsr2iIXTtZ5.jpg"
/// backdrop_path : "https://image.tmdb.org/t/p/w500/fAAwtBJg2bajc94OWb6AKt9vcIR.jpg"
/// vote_average : 4.4
/// subtitle : null
/// type : "movie"
/// substype : 0
/// genres : [{"id":55752,"movie_id":27171,"genre_id":35,"created_at":"2024-11-15T12:29:30.000000Z","updated_at":"2024-11-15T12:29:30.000000Z","name":"كوميديا"},{"id":55753,"movie_id":27171,"genre_id":14,"created_at":"2024-11-15T12:29:30.000000Z","updated_at":"2024-11-15T12:29:30.000000Z","name":"فانتازيا"},{"id":55754,"movie_id":27171,"genre_id":27,"created_at":"2024-11-15T12:29:30.000000Z","updated_at":"2024-11-15T12:29:30.000000Z","name":"رعب"}]

MovieApiResponseEntity movieApiResponseEntityFromJson(String str) => MovieApiResponseEntity.fromJson(json.decode(str));
String movieApiResponseEntityToJson(MovieApiResponseEntity data) => json.encode(data.toJson());
class MovieApiResponseEntity {
  MovieApiResponseEntity({
      String? title, 
      num? id, 
      String? posterPath, 
      String? backdropPath, 
      num? voteAverage, 
      dynamic subtitle, 
      String? type, 
      num? substype, 
      List<Genres>? genres,}){
    _title = title;
    _id = id;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _type = type;
    _substype = substype;
    _genres = genres;
}

  MovieApiResponseEntity.fromJson(dynamic json) {
    _title = json['title'];
    _id = json['id'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _type = json['type'];
    _substype = json['substype'];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
  }
  String? _title;
  num? _id;
  String? _posterPath;
  String? _backdropPath;
  num? _voteAverage;
  dynamic _subtitle;
  String? _type;
  num? _substype;
  List<Genres>? _genres;

  String? get title => _title;
  num? get id => _id;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;
  num? get voteAverage => _voteAverage;
  dynamic get subtitle => _subtitle;
  String? get type => _type;
  num? get substype => _substype;
  List<Genres>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['id'] = _id;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['type'] = _type;
    map['substype'] = _substype;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

