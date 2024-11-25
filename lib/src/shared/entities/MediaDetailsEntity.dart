import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/casters_list.dart';
import 'package:happy_time_module/src/shared/models/responses/videos_list.dart';

import '../models/responses/networks_list.dart';
import '../models/responses/seasons_list.dart';

/// id : 5602
/// tmdb_id : 1399
/// name : "Game of Thrones"
/// original_name : "Game of Thrones"
/// imdb_external_id : ""
/// subtitle : ""
/// overview : "يُكمل بران ستارك تدريبه خلف السور، ليُضاعف التدريب قدرته السابقة على رؤية الماضي والمستقبل. يعود جايمي إلى أخته سيرسي بصحبته جثة ابنتها. بينما تايرون لانيستر على أراضي ميرين يحاول ضبط زمام الأمور في المدينة وإدارة أحوالها قبل أن تعمها فوضى عارمة. وأخيرًا، رامساي بولتون يُسخِّر نفوذه بحثًا عن سانسا ستارك وثيون جريجوي في ربوع وينترفيل بعد هروبهما."
/// poster_path : "https://image.tmdb.org/t/p/w500/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg"
/// backdrop_path : "https://image.tmdb.org/t/p/w200/2OMB0ynKlyIenMJWI2Dy9IWT4c.jpg"
/// trailer_url : ""
/// preview_path : ""
/// views : 245429
/// vote_average : 9
/// vote_count : 21775
/// popularity : 443.97
/// featured : 0
/// pinned : 0
/// newEpisodes : 0
/// premuim : 0
/// active : 1
/// first_air_date : "2011-04-17"
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2024-11-17T09:18:34.000000Z"
/// backdrop_path_tv : "http://image.tmdb.org/t/p/w500/2OMB0ynKlyIenMJWI2Dy9IWT4c.jpg"
/// indexCheck : "ADD"
/// enable_ads_unlock : 0
/// enable_stream : 1
/// enable_media_download : 1
/// substype : 0
/// release_date : "2024-07-11"
/// skiprecap_start_in : 0
/// genreslist : ["خيال علمي وفانتازيا","دراما","حركة ومغامرة"]
/// casterslist : [{"id":6203,"name":"Peter Dinklage","original_name":"Peter Dinklage","profile_path":"http://image.tmdb.org/t/p/w500//9CAd7wr8QZyIN0E7nm8v1B6WkGn.jpg"}]
/// networkslist : [{"id":6939,"name":"مسلسلات أجنبية","logo_path":null,"origin_country":null,"created_at":"2023-08-18T19:51:19.000000Z","updated_at":"2023-08-18T19:51:19.000000Z","type":"serie"}]
/// genres : [{"id":10333,"serie_id":5602,"genre_id":10765,"created_at":"2023-09-18T05:54:10.000000Z","updated_at":"2023-09-18T05:54:10.000000Z","name":"خيال علمي وفانتازيا"}]
/// seasons : [{"id":9409,"tmdb_id":1399,"serie_id":5602,"season_number":1,"name":"الموسم 1","overview":null,"poster_path":null,"air_date":"2023-09-18","created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","episodes":[{"id":147490,"tmdb_id":1399,"season_id":9409,"episode_number":1,"name":"الحلقة 1","overview":"","still_path":"https://image.tmdb.org/t/p/w500/wrGWeW4WKxnaeA8sxJb2T9O6ryo.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":"","skiprecap_start_in":0,"hasrecap":0,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z","still_path_tv":"","enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":171613,"episode_id":147490,"server":"VIP Fast","header":null,"useragent":null,"link":"https://www.fasoul.egyfasel/video_player?uid=0$vid=57c52d296ca4e7f4867f8a2a4f79ce22$img=https://img.scdns.io/thumb/57c52d296ca4e7f4867f8a2a4f79ce22/large.jpg","lang":"Arabic","video_name":"","embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}]}]}]

enum MediaTypeEnum { movie, series, anime }

MediaDetailsEntity mediaDetailsEntityFromJson(String str) =>
    MediaDetailsEntity.fromJson(json.decode(str));

String mediaDetailsEntityToJson(MediaDetailsEntity data) =>
    json.encode(data.toJson());

class MediaDetailsEntity {
  MediaDetailsEntity({
    num? id,
    num? tmdbId,
    String? name,
    num? isAnime,
    String? originalName,
    String? imdbExternalId,
    String? subtitle,
    String? overview,
    String? posterPath,
    String? backdropPath,
    String? trailerUrl,
    String? previewPath,
    num? views,
    num? voteAverage,
    num? voteCount,
    num? popularity,
    num? featured,
    num? pinned,
    num? newEpisodes,
    num? premuim,
    num? active,
    String? firstAirDate,
    String? createdAt,
    String? updatedAt,
    String? backdropPathTv,
    String? indexCheck,
    num? enableAdsUnlock,
    num? enableStream,
    num? enableMediaDownload,
    num? substype,
    String? type,
    String? releaseDate,
    num? skiprecapStartIn,
    List<String>? genreslist,
    List<Casterslist>? casterslist,
    List<Networkslist>? networkslist,
    List<Genres>? genres,
    List<Seasons>? seasons,
    List<Videos>? videos,
  }) {
    _id = id;
    _tmdbId = tmdbId;
    _name = name;
    _isAnime = isAnime;
    _originalName = originalName;
    _imdbExternalId = imdbExternalId;
    _subtitle = subtitle;
    _overview = overview;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _trailerUrl = trailerUrl;
    _previewPath = previewPath;
    _views = views;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _popularity = popularity;
    _featured = featured;
    _pinned = pinned;
    _newEpisodes = newEpisodes;
    _premuim = premuim;
    _active = active;
    _firstAirDate = firstAirDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _backdropPathTv = backdropPathTv;
    _indexCheck = indexCheck;
    _enableAdsUnlock = enableAdsUnlock;
    _enableStream = enableStream;
    _enableMediaDownload = enableMediaDownload;
    _substype = substype;
    _type = type;
    _releaseDate = releaseDate;
    _skiprecapStartIn = skiprecapStartIn;
    _genreslist = genreslist;
    _casterslist = casterslist;
    _networkslist = networkslist;
    _genres = genres;
    _seasons = seasons;
    _videos = videos;
  }

  MediaDetailsEntity.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _isAnime = json['is_anime'];
    _name = json['name'] ?? json['title'];
    _originalName = json['original_name'];
    _imdbExternalId = json['imdb_external_id'];
    _subtitle = json['subtitle'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _trailerUrl = json['trailer_url'];
    _previewPath = json['preview_path'];
    _views = json['views'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _popularity = json['popularity'];
    _featured = json['featured'];
    _pinned = json['pinned'];
    _type = json['type'];
    _newEpisodes = json['newEpisodes'];
    _premuim = json['premuim'];
    _active = json['active'];
    _firstAirDate = json['first_air_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _backdropPathTv = json['backdrop_path_tv'];
    _indexCheck = json['indexCheck'];
    _enableAdsUnlock = json['enable_ads_unlock'];
    _enableStream = json['enable_stream'];
    _enableMediaDownload = json['enable_media_download'];
    _substype = json['substype'];
    _releaseDate = json['release_date'];
    _skiprecapStartIn = json['skiprecap_start_in'] ?? 0;
    _genreslist =
        json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['casterslist'] != null) {
      _casterslist = [];
      json['casterslist'].forEach((v) {
        _casterslist?.add(Casterslist.fromJson(v));
      });
    }
    if (json['networkslist'] != null) {
      _networkslist = [];
      json['networkslist'].forEach((v) {
        _networkslist?.add(Networkslist.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      _seasons = [];
      json['seasons'].forEach((v) {
        _seasons?.add(Seasons.fromJson(v));
      });
    }

    if (json['videos'] != null) {
      _videos = [];
      json['videos'].forEach((v) {
        _videos?.add(Videos.fromJson(v));
      });
    }
  }

  num? _id;
  num? _tmdbId;
  num? _isAnime;
  String? _name;
  String? _originalName;
  String? _imdbExternalId;
  String? _subtitle;
  String? _overview;
  String? _posterPath;
  String? _backdropPath;
  String? _trailerUrl;
  String? _previewPath;
  num? _views;
  String? _type;
  num? _voteAverage;
  num? _voteCount;
  num? _popularity;
  num? _featured;
  num? _pinned;
  num? _newEpisodes;
  num? _premuim;
  num? _active;
  String? _firstAirDate;
  String? _createdAt;
  String? _updatedAt;
  String? _backdropPathTv;
  String? _indexCheck;
  num? _enableAdsUnlock;
  num? _enableStream;
  num? _enableMediaDownload;
  num? _substype;
  String? _releaseDate;
  num? _skiprecapStartIn;
  MediaTypeEnum? _mediaTypeEnum;
  List<String>? _genreslist;
  List<Casterslist>? _casterslist;
  List<Networkslist>? _networkslist;
  List<Genres>? _genres;
  List<Seasons>? _seasons;
  List<Videos>? _videos;

  num? get id => _id;

  num? get tmdbId => _tmdbId;

  String? get name => _name;

  String? get originalName => _originalName;

  String? get imdbExternalId => _imdbExternalId;

  String? get subtitle => _subtitle;

  String? get overview => _overview;

  String? get posterPath => _posterPath;

  String? get backdropPath => _backdropPath;

  String? get trailerUrl => _trailerUrl;

  String? get previewPath => _previewPath;

  num? get views => _views;

  String? get type => _type ?? 'anime';

  num? get voteAverage => _voteAverage;

  num? get voteCount => _voteCount;

  num? get popularity => _popularity;

  num? get featured => _featured;

  num? get pinned => _pinned;

  num? get newEpisodes => _newEpisodes;

  num? get premuim => _premuim;

  num? get active => _active;

  String? get firstAirDate => _firstAirDate;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get backdropPathTv => _backdropPathTv;

  String? get indexCheck => _indexCheck;

  num? get enableAdsUnlock => _enableAdsUnlock;

  num? get enableStream => _enableStream;

  num? get enableMediaDownload => _enableMediaDownload;

  num? get substype => _substype;

  MediaTypeEnum? get mediaTypeEnum =>
      _mediaTypeEnum; //  MediaTypeEnum? _mediaTypeEnum;
  String? get releaseDate => _releaseDate;

  num? get skiprecapStartIn => _skiprecapStartIn;

  List<String>? get genreslist => _genreslist;

  List<Casterslist>? get casterslist => _casterslist;

  List<Networkslist>? get networkslist => _networkslist;

  List<Genres>? get genres => _genres;

  List<Seasons>? get seasons => _seasons;

  List<Videos>? get videos => _videos;

  num? get isAnime => _isAnime;

  set setSelectedMediaTypeEnum(MediaTypeEnum typeEnum) {
    _mediaTypeEnum = typeEnum;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['imdb_external_id'] = _imdbExternalId;
    map['subtitle'] = _subtitle;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['trailer_url'] = _trailerUrl;
    map['preview_path'] = _previewPath;
    map['views'] = _views;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['popularity'] = _popularity;
    map['featured'] = _featured;
    map['pinned'] = _pinned;
    map['newEpisodes'] = _newEpisodes;
    map['premuim'] = _premuim;
    map['active'] = _active;
    map['first_air_date'] = _firstAirDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['backdrop_path_tv'] = _backdropPathTv;
    map['indexCheck'] = _indexCheck;
    map['enable_ads_unlock'] = _enableAdsUnlock;
    map['enable_stream'] = _enableStream;
    map['enable_media_download'] = _enableMediaDownload;
    map['substype'] = _substype;
    map['type'] = _type ?? 'anime';
    map['release_date'] = _releaseDate;
    map['skiprecap_start_in'] = _skiprecapStartIn;
    map['genreslist'] = _genreslist;
    if (_casterslist != null) {
      map['casterslist'] = _casterslist?.map((v) => v.toJson()).toList();
    }
    if (_networkslist != null) {
      map['networkslist'] = _networkslist?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_seasons != null) {
      map['seasons'] = _seasons?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
