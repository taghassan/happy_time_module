
import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/AnimeApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';

/// id : 69
/// name : "المؤسس عثمان مدبلج"
/// poster_path : "https://image.tmdb.org/t/p/w500/oW4Lt0J4cJrRrk66q9bkPNQTuwp.jpg"
/// vote_average : 7.9
/// subtitle : "مدبلج"
/// is_anime : 1
/// type : "anime"
/// genreslist : ["حرب وسياسة","حركة ومغامرة","دراما","وثائقي"]
/// genres : [{"id":187,"anime_id":69,"genre_id":10768,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حرب وسياسة"},{"id":188,"anime_id":69,"genre_id":10759,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حركة ومغامرة"},{"id":189,"anime_id":69,"genre_id":18,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"دراما"},{"id":190,"anime_id":69,"genre_id":99,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"وثائقي"}]
/// networks : [{"id":217,"anime_id":69,"network_id":36,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"atv"},{"id":568,"anime_id":69,"network_id":7014,"created_at":"2023-10-20T16:55:20.000000Z","updated_at":"2023-10-20T16:55:20.000000Z","name":"مسلسلات تركية"}]

MediaResponseModel dataFromJson(String str) => MediaResponseModel.fromJson(json.decode(str));
String dataToJson(MediaResponseModel data) => json.encode(data.toJson());
class MediaResponseModel {
  MediaResponseModel({
    num? id,
    String? name,
    String? posterPath,
    num? voteAverage,
    String? subtitle,
    num? isAnime,
    String? type,
    List<String>? genreslist,
    List<Genres>? genres,
    List<Networks>? networks,}){
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _voteAverage = voteAverage;
    _subtitle = subtitle;
    _isAnime = isAnime;
    _type = type;
    _genreslist = genreslist;
    _genres = genres;
    _networks = networks;
  }

  MediaResponseModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _voteAverage = json['vote_average'];
    _subtitle = json['subtitle'];
    _isAnime = json['is_anime'];
    _type = json['type'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    if (json['networks'] != null) {
      _networks = [];
      json['networks'].forEach((v) {
        _networks?.add(Networks.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _posterPath;
  num? _voteAverage;
  String? _subtitle;
  num? _isAnime;
  String? _type;
  List<String>? _genreslist;
  List<Genres>? _genres;
  List<Networks>? _networks;
  MediaResponseModel copyWith({  num? id,
    String? name,
    String? posterPath,
    num? voteAverage,
    String? subtitle,
    num? isAnime,
    String? type,
    List<String>? genreslist,
    List<Genres>? genres,
    List<Networks>? networks,
  }) => MediaResponseModel(  id: id ?? _id,
    name: name ?? _name,
    posterPath: posterPath ?? _posterPath,
    voteAverage: voteAverage ?? _voteAverage,
    subtitle: subtitle ?? _subtitle,
    isAnime: isAnime ?? _isAnime,
    type: type ?? _type,
    genreslist: genreslist ?? _genreslist,
    genres: genres ?? _genres,
    networks: networks ?? _networks,
  );
  num? get id => _id;
  String? get name => _name;
  String? get posterPath => _posterPath;
  num? get voteAverage => _voteAverage;
  String? get subtitle => _subtitle;
  num? get isAnime => _isAnime;
  String? get type => _type;
  List<String>? get genreslist => _genreslist;
  List<Genres>? get genres => _genres;
  List<Networks>? get networks => _networks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['vote_average'] = _voteAverage;
    map['subtitle'] = _subtitle;
    map['is_anime'] = _isAnime;
    map['type'] = _type;
    map['genreslist'] = _genreslist;
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_networks != null) {
      map['networks'] = _networks?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
