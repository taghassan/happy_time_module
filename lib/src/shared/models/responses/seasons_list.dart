import 'dart:convert';

import 'episodes_list.dart';

/// id : 9409
/// tmdb_id : 1399
/// serie_id : 5602
/// season_number : 1
/// name : "الموسم 1"
/// overview : null
/// poster_path : null
/// air_date : "2023-09-18"
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2022-07-22T13:38:24.000000Z"
/// episodes : [{"id":147490,"tmdb_id":1399,"season_id":9409,"episode_number":1,"name":"الحلقة 1","overview":"","still_path":"https://image.tmdb.org/t/p/w500/wrGWeW4WKxnaeA8sxJb2T9O6ryo.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":"","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":"","enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":171613,"episode_id":147490,"server":"VIP Fast","header":null,"useragent":null,"link":"https://www.fasoul.egyfasel/video_player?uid=0$vid=57c52d296ca4e7f4867f8a2a4f79ce22$img=https://img.scdns.io/thumb/57c52d296ca4e7f4867f8a2a4f79ce22/large.jpg","lang":"Arabic","video_name":"","embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}]}]

Seasons seasonsFromJson(String str) => Seasons.fromJson(json.decode(str));
String seasonsToJson(Seasons data) => json.encode(data.toJson());
class Seasons {
  Seasons({
    num? id,
    num? tmdbId,
    num? serieId,
    num? seasonNumber,
    String? name,
    dynamic overview,
    dynamic posterPath,
    String? airDate,
    String? createdAt,
    String? updatedAt,
    List<Episodes>? episodes,}){
    _id = id;
    _tmdbId = tmdbId;
    _serieId = serieId;
    _seasonNumber = seasonNumber;
    _name = name;
    _overview = overview;
    _posterPath = posterPath;
    _airDate = airDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _episodes = episodes;
  }

  Seasons.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _serieId = json['serie_id'];
    _seasonNumber = json['season_number'];
    _name = json['name'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _airDate = json['air_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['episodes'] != null) {
      _episodes = [];
      json['episodes'].forEach((v) {
        _episodes?.add(Episodes.fromJson(v));
      });
    }
  }
  num? _id;
  num? _tmdbId;
  num? _serieId;
  num? _seasonNumber;
  String? _name;
  dynamic _overview;
  dynamic _posterPath;
  String? _airDate;
  String? _createdAt;
  String? _updatedAt;
  List<Episodes>? _episodes;

  num? get id => _id;
  num? get tmdbId => _tmdbId;
  num? get serieId => _serieId;
  num? get seasonNumber => _seasonNumber;
  String? get name => _name;
  dynamic get overview => _overview;
  dynamic get posterPath => _posterPath;
  String? get airDate => _airDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<Episodes>? get episodes => _episodes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['serie_id'] = _serieId;
    map['season_number'] = _seasonNumber;
    map['name'] = _name;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['air_date'] = _airDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_episodes != null) {
      map['episodes'] = _episodes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
