
import 'dart:convert';

import 'videos_list.dart';

/// id : 147490
/// tmdb_id : 1399
/// season_id : 9409
/// episode_number : 1
/// name : "الحلقة 1"
/// overview : ""
/// still_path : "https://image.tmdb.org/t/p/w500/wrGWeW4WKxnaeA8sxJb2T9O6ryo.jpg"
/// vote_average : 0
/// vote_count : null
/// views : 0
/// air_date : ""
/// skiprecap_start_in : 0
/// hasrecap : 0
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2022-07-22T13:38:24.000000Z"
/// still_path_tv : ""
/// enable_stream : 1
/// enable_media_download : 1
/// enable_ads_unlock : 0
/// videos : [{"id":171613,"episode_id":147490,"server":"VIP Fast","header":null,"useragent":null,"link":"https://www.fasoul.egyfasel/video_player?uid=0$vid=57c52d296ca4e7f4867f8a2a4f79ce22$img=https://img.scdns.io/thumb/57c52d296ca4e7f4867f8a2a4f79ce22/large.jpg","lang":"Arabic","video_name":"","embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}]

Episodes episodesFromJson(String str) => Episodes.fromJson(json.decode(str));
String episodesToJson(Episodes data) => json.encode(data.toJson());
class Episodes {
  Episodes({
    num? id,
    num? tmdbId,
    num? seasonId,
    num? episodeNumber,
    String? name,
    String? overview,
    String? stillPath,
    num? voteAverage,
    dynamic voteCount,
    num? views,
    String? airDate,
    num? skiprecapStartIn,
    num? hasrecap,
    String? createdAt,
    String? updatedAt,
    String? stillPathTv,
    num? enableStream,
    num? enableMediaDownload,
    num? enableAdsUnlock,
    List<Videos>? videos,}){
    _id = id;
    _tmdbId = tmdbId;
    _seasonId = seasonId;
    _episodeNumber = episodeNumber;
    _name = name;
    _overview = overview;
    _stillPath = stillPath;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _views = views;
    _airDate = airDate;
    _skiprecapStartIn = skiprecapStartIn;
    _hasrecap = hasrecap;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _stillPathTv = stillPathTv;
    _enableStream = enableStream;
    _enableMediaDownload = enableMediaDownload;
    _enableAdsUnlock = enableAdsUnlock;
    _videos = videos;
  }

  Episodes.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _seasonId = json['season_id'];
    _episodeNumber = json['episode_number'];
    _name = json['name'];
    _overview = json['overview'];
    _stillPath = json['still_path'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _views = json['views'];
    _airDate = json['air_date'];
    _skiprecapStartIn = json['skiprecap_start_in'];
    _hasrecap = json['hasrecap'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _stillPathTv = json['still_path_tv'];
    _enableStream = json['enable_stream'];
    _enableMediaDownload = json['enable_media_download'];
    _enableAdsUnlock = json['enable_ads_unlock'];
    if (json['videos'] != null) {
      _videos = [];
      json['videos'].forEach((v) {
        _videos?.add(Videos.fromJson(v));
      });
    }
  }
  num? _id;
  num? _tmdbId;
  num? _seasonId;
  num? _episodeNumber;
  String? _name;
  String? _overview;
  String? _stillPath;
  num? _voteAverage;
  dynamic _voteCount;
  num? _views;
  String? _airDate;
  num? _skiprecapStartIn;
  num? _hasrecap;
  String? _createdAt;
  String? _updatedAt;
  String? _stillPathTv;
  num? _enableStream;
  num? _enableMediaDownload;
  num? _enableAdsUnlock;
  List<Videos>? _videos;

  num? get id => _id;
  num? get tmdbId => _tmdbId;
  num? get seasonId => _seasonId;
  num? get episodeNumber => _episodeNumber;
  String? get name => _name;
  String? get overview => _overview;
  String? get stillPath => _stillPath;
  num? get voteAverage => _voteAverage;
  dynamic get voteCount => _voteCount;
  num? get views => _views;
  String? get airDate => _airDate;
  num? get skiprecapStartIn => _skiprecapStartIn;
  num? get hasrecap => _hasrecap;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get stillPathTv => _stillPathTv;
  num? get enableStream => _enableStream;
  num? get enableMediaDownload => _enableMediaDownload;
  num? get enableAdsUnlock => _enableAdsUnlock;
  List<Videos>? get videos => _videos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['season_id'] = _seasonId;
    map['episode_number'] = _episodeNumber;
    map['name'] = _name;
    map['overview'] = _overview;
    map['still_path'] = _stillPath;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['views'] = _views;
    map['air_date'] = _airDate;
    map['skiprecap_start_in'] = _skiprecapStartIn;
    map['hasrecap'] = _hasrecap;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['still_path_tv'] = _stillPathTv;
    map['enable_stream'] = _enableStream;
    map['enable_media_download'] = _enableMediaDownload;
    map['enable_ads_unlock'] = _enableAdsUnlock;
    if (_videos != null) {
      map['videos'] = _videos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}