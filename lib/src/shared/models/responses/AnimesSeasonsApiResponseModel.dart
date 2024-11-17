import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/videos_list.dart';
/// current_page : 1
/// data : [{"id":39500,"tmdb_id":null,"anime_season_id":759,"episode_number":1,"name":"الحلقة 1","overview":null,"still_path":"https://image.tmdb.org/t/p/w500/lbjfqpOJ8kQf0Frh48RibOseEX9.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":null,"skiprecap_start_in":0,"hasrecap":0,"created_at":"2024-02-25T22:31:14.000000Z","updated_at":"2024-02-25T22:31:14.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":93614,"anime_episode_id":39500,"server":"480p","header":"https://miravd.com/","useragent":null,"link":"https://miravd.com/embed-k9j0p5laefml.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":93616,"anime_episode_id":39500,"server":"720p","header":"https://mwdy.cc/","useragent":null,"link":"https://mwdy.cc/embed-wwors7hmjtav.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":39498,"tmdb_id":null,"anime_season_id":759,"episode_number":2,"name":"الحلقة 2","overview":null,"still_path":"https://image.tmdb.org/t/p/w500/lbjfqpOJ8kQf0Frh48RibOseEX9.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":null,"skiprecap_start_in":0,"hasrecap":0,"created_at":"2024-02-25T22:31:14.000000Z","updated_at":"2024-02-25T22:31:14.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":93610,"anime_episode_id":39498,"server":"480p","header":"https://miravd.com/","useragent":null,"link":"https://miravd.com/embed-o7geosnkvief.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":93611,"anime_episode_id":39498,"server":"720p","header":"https://mwdy.cc/","useragent":null,"link":"https://mwdy.cc/embed-lvaaskzx96v1.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":39496,"tmdb_id":null,"anime_season_id":759,"episode_number":3,"name":"الحلقة 3","overview":null,"still_path":"https://image.tmdb.org/t/p/w500/lbjfqpOJ8kQf0Frh48RibOseEX9.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":null,"skiprecap_start_in":0,"hasrecap":0,"created_at":"2024-02-25T22:31:14.000000Z","updated_at":"2024-02-25T22:31:14.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":93604,"anime_episode_id":39496,"server":"480p","header":"https://miravd.com/","useragent":null,"link":"https://miravd.com/embed-seoruys0al6g.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":93606,"anime_episode_id":39496,"server":"720p","header":"https://mwdy.cc/","useragent":null,"link":"https://mwdy.cc/embed-229xnoc869i2.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]},{"id":39494,"tmdb_id":null,"anime_season_id":759,"episode_number":4,"name":"الحلقة 4","overview":null,"still_path":"https://image.tmdb.org/t/p/w500/lbjfqpOJ8kQf0Frh48RibOseEX9.jpg","vote_average":0,"vote_count":null,"views":0,"air_date":null,"skiprecap_start_in":0,"hasrecap":0,"created_at":"2024-02-25T22:31:14.000000Z","updated_at":"2024-02-25T22:31:14.000000Z","still_path_tv":null,"enable_stream":1,"enable_media_download":1,"enable_ads_unlock":0,"videos":[{"id":93597,"anime_episode_id":39494,"server":"480p","header":"https://miravd.com/","useragent":null,"link":"https://miravd.com/embed-fpp7jh8v9n42.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":93600,"anime_episode_id":39494,"server":"720p","header":"https://mwdy.cc/","useragent":null,"link":"https://mwdy.cc/embed-1ao28diz8jhs.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}],"substitles":[],"downloads":[]}]
/// first_page_url : "https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1"
/// from : 1
/// last_page : 43
/// last_page_url : "https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=43"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1","label":"1","active":true},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"2","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=3","label":"3","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=4","label":"4","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=5","label":"5","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=6","label":"6","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=7","label":"7","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=8","label":"8","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=9","label":"9","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=42","label":"42","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=43","label":"43","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2"
/// path : "https://abcdef.flech.tn/egybestant/public/api/animes/seasons/759/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq"
/// per_page : 4
/// prev_page_url : null
/// to : 4
/// total : 170

AnimeSeasonApiResponseModel animesSeasonsApiResponseModelFromJson(String str) => AnimeSeasonApiResponseModel.fromJson(json.decode(str));
String animesSeasonsApiResponseModelToJson(AnimeSeasonApiResponseModel data) => json.encode(data.toJson());
class AnimeSeasonApiResponseModel {
  AnimeSeasonApiResponseModel({
      num? currentPage, 
      List<Data>? data, 
      String? firstPageUrl, 
      num? from, 
      num? lastPage, 
      String? lastPageUrl, 
      List<Links>? links, 
      String? nextPageUrl, 
      String? path, 
      num? perPage, 
      dynamic prevPageUrl, 
      num? to, 
      num? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
}

  AnimeSeasonApiResponseModel.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  num? _currentPage;
  List<Data>? _data;
  String? _firstPageUrl;
  num? _from;
  num? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  num? _perPage;
  dynamic _prevPageUrl;
  num? _to;
  num? _total;
AnimeSeasonApiResponseModel copyWith({  num? currentPage,
  List<Data>? data,
  String? firstPageUrl,
  num? from,
  num? lastPage,
  String? lastPageUrl,
  List<Links>? links,
  String? nextPageUrl,
  String? path,
  num? perPage,
  dynamic prevPageUrl,
  num? to,
  num? total,
}) => AnimeSeasonApiResponseModel(  currentPage: currentPage ?? _currentPage,
  data: data ?? _data,
  firstPageUrl: firstPageUrl ?? _firstPageUrl,
  from: from ?? _from,
  lastPage: lastPage ?? _lastPage,
  lastPageUrl: lastPageUrl ?? _lastPageUrl,
  links: links ?? _links,
  nextPageUrl: nextPageUrl ?? _nextPageUrl,
  path: path ?? _path,
  perPage: perPage ?? _perPage,
  prevPageUrl: prevPageUrl ?? _prevPageUrl,
  to: to ?? _to,
  total: total ?? _total,
);
  num? get currentPage => _currentPage;
  List<Data>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  num? get from => _from;
  num? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  List<Links>? get links => _links;
  String? get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  num? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  num? get to => _to;
  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}

/// url : null
/// label : "&laquo; Previous"
/// active : false

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());
class Links {
  Links({
      dynamic url, 
      String? label, 
      bool? active,}){
    _url = url;
    _label = label;
    _active = active;
}

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }
  dynamic _url;
  String? _label;
  bool? _active;
Links copyWith({  dynamic url,
  String? label,
  bool? active,
}) => Links(  url: url ?? _url,
  label: label ?? _label,
  active: active ?? _active,
);
  dynamic get url => _url;
  String? get label => _label;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }

}

/// id : 39500
/// tmdb_id : null
/// anime_season_id : 759
/// episode_number : 1
/// name : "الحلقة 1"
/// overview : null
/// still_path : "https://image.tmdb.org/t/p/w500/lbjfqpOJ8kQf0Frh48RibOseEX9.jpg"
/// vote_average : 0
/// vote_count : null
/// views : 0
/// air_date : null
/// skiprecap_start_in : 0
/// hasrecap : 0
/// created_at : "2024-02-25T22:31:14.000000Z"
/// updated_at : "2024-02-25T22:31:14.000000Z"
/// still_path_tv : null
/// enable_stream : 1
/// enable_media_download : 1
/// enable_ads_unlock : 0
/// videos : [{"id":93614,"anime_episode_id":39500,"server":"480p","header":"https://miravd.com/","useragent":null,"link":"https://miravd.com/embed-k9j0p5laefml.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":93616,"anime_episode_id":39500,"server":"720p","header":"https://mwdy.cc/","useragent":null,"link":"https://mwdy.cc/embed-wwors7hmjtav.html","lang":"Arabic","video_name":null,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"}]
/// substitles : []
/// downloads : []

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      dynamic tmdbId, 
      num? animeSeasonId, 
      num? episodeNumber, 
      String? name, 
      dynamic overview, 
      String? stillPath, 
      num? voteAverage, 
      dynamic voteCount, 
      num? views, 
      dynamic airDate, 
      num? skiprecapStartIn, 
      num? hasrecap, 
      String? createdAt, 
      String? updatedAt, 
      dynamic stillPathTv, 
      num? enableStream, 
      num? enableMediaDownload, 
      num? enableAdsUnlock, 
      List<Videos>? videos, 
      List<dynamic>? substitles, 
      List<dynamic>? downloads,}){
    _id = id;
    _tmdbId = tmdbId;
    _animeSeasonId = animeSeasonId;
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
    _substitles = substitles;
    _downloads = downloads;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _animeSeasonId = json['anime_season_id'];
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
    if (json['substitles'] != null) {
      _substitles = [];
      json['substitles'].forEach((v) {
        _substitles?.add(v);
        // _substitles?.add(v);
      });
    }
    if (json['downloads'] != null) {
      _downloads = [];
      json['downloads'].forEach((v) {
        _downloads?.add(v);
      });
    }
  }
  num? _id;
  dynamic _tmdbId;
  num? _animeSeasonId;
  num? _episodeNumber;
  String? _name;
  dynamic _overview;
  String? _stillPath;
  num? _voteAverage;
  dynamic _voteCount;
  num? _views;
  dynamic _airDate;
  num? _skiprecapStartIn;
  num? _hasrecap;
  String? _createdAt;
  String? _updatedAt;
  dynamic _stillPathTv;
  num? _enableStream;
  num? _enableMediaDownload;
  num? _enableAdsUnlock;
  List<Videos>? _videos;
  List<dynamic>? _substitles;
  List<dynamic>? _downloads;
Data copyWith({  num? id,
  dynamic tmdbId,
  num? animeSeasonId,
  num? episodeNumber,
  String? name,
  dynamic overview,
  String? stillPath,
  num? voteAverage,
  dynamic voteCount,
  num? views,
  dynamic airDate,
  num? skiprecapStartIn,
  num? hasrecap,
  String? createdAt,
  String? updatedAt,
  dynamic stillPathTv,
  num? enableStream,
  num? enableMediaDownload,
  num? enableAdsUnlock,
  List<Videos>? videos,
  List<dynamic>? substitles,
  List<dynamic>? downloads,
}) => Data(  id: id ?? _id,
  tmdbId: tmdbId ?? _tmdbId,
  animeSeasonId: animeSeasonId ?? _animeSeasonId,
  episodeNumber: episodeNumber ?? _episodeNumber,
  name: name ?? _name,
  overview: overview ?? _overview,
  stillPath: stillPath ?? _stillPath,
  voteAverage: voteAverage ?? _voteAverage,
  voteCount: voteCount ?? _voteCount,
  views: views ?? _views,
  airDate: airDate ?? _airDate,
  skiprecapStartIn: skiprecapStartIn ?? _skiprecapStartIn,
  hasrecap: hasrecap ?? _hasrecap,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  stillPathTv: stillPathTv ?? _stillPathTv,
  enableStream: enableStream ?? _enableStream,
  enableMediaDownload: enableMediaDownload ?? _enableMediaDownload,
  enableAdsUnlock: enableAdsUnlock ?? _enableAdsUnlock,
  videos: videos ?? _videos,
  substitles: substitles ?? _substitles,
  downloads: downloads ?? _downloads,
);
  num? get id => _id;
  dynamic get tmdbId => _tmdbId;
  num? get animeSeasonId => _animeSeasonId;
  num? get episodeNumber => _episodeNumber;
  String? get name => _name;
  dynamic get overview => _overview;
  String? get stillPath => _stillPath;
  num? get voteAverage => _voteAverage;
  dynamic get voteCount => _voteCount;
  num? get views => _views;
  dynamic get airDate => _airDate;
  num? get skiprecapStartIn => _skiprecapStartIn;
  num? get hasrecap => _hasrecap;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get stillPathTv => _stillPathTv;
  num? get enableStream => _enableStream;
  num? get enableMediaDownload => _enableMediaDownload;
  num? get enableAdsUnlock => _enableAdsUnlock;
  List<Videos>? get videos => _videos;
  List<dynamic>? get substitles => _substitles;
  List<dynamic>? get downloads => _downloads;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['anime_season_id'] = _animeSeasonId;
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
    if (_substitles != null) {
      map['substitles'] = _substitles?.map((v) => v.toJson()).toList();
    }
    if (_downloads != null) {
      map['downloads'] = _downloads?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

