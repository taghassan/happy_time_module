import 'dart:convert';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';

import 'GenresResponseModel.dart';

import 'casters_list.dart';
import 'networks_list.dart';
import 'videos_list.dart';
/// id : 2497
/// tmdb_id : 502356
/// title : "The Super Mario Bros 2023"
/// imdb_external_id : "tt6718170"
/// original_name : "The Super Mario Bros. Movie"
/// subtitle : "Bluray"
/// overview : "\n                            قصة سوبر ماريو براذرز في رحلتهم عبر مملكة الفطر.\n                        "
/// poster_path : "https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"
/// backdrop_path : "https://image.tmdb.org/t/p/w200/9n2tJBplPbgR2ca05hS5CKXwP2c.jpg"
/// preview_path : null
/// vote_average : 7.53
/// trailer_url : null
/// vote_count : 761
/// popularity : 9032.95
/// runtime : "92"
/// views : 14366
/// featured : 0
/// premuim : 0
/// active : 1
/// release_date : "2023-04-05"
/// skiprecap_start_in : 0
/// hasrecap : 0
/// pinned : 0
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2024-11-12T09:27:39.000000Z"
/// enable_stream : 1
/// enable_media_download : 1
/// enable_ads_unlock : 0
/// backdrop_path_tv : null
/// indexCheck : "ADD"
/// casterslist : [{"id":3144,"name":"Chris Pratt","original_name":"Chris Pratt","profile_path":"http://image.tmdb.org/t/p/w500//83o3koL82jt30EJ0rz4Bnzrt2dd.jpg"},{"id":1916,"name":"Anya Taylor-Joy","original_name":"Anya Taylor-Joy","profile_path":"http://image.tmdb.org/t/p/w500//yZpghhtKM2VZHDx6JGAZqAVU4PL.jpg"},{"id":4041,"name":"Charlie Day","original_name":"Charlie Day","profile_path":"http://image.tmdb.org/t/p/w500//c0HNhjChGybnHa4eoLyqO4dDu1j.jpg"},{"id":16149,"name":"Jack Black","original_name":"Jack Black","profile_path":"http://image.tmdb.org/t/p/w500//rtCx0fiYxJVhzXXdwZE2XRTfIKE.jpg"},{"id":390,"name":"Keegan-Michael Key","original_name":"Keegan-Michael Key","profile_path":"http://image.tmdb.org/t/p/w500//vAR5gVXRG2Cl6WskXT99wgkAoH8.jpg"},{"id":3820,"name":"Seth Rogen","original_name":"Seth Rogen","profile_path":"http://image.tmdb.org/t/p/w500//2dPFskUtoiG0xafsSEGl9Oz4teA.jpg"},{"id":3372,"name":"Fred Armisen","original_name":"Fred Armisen","profile_path":"http://image.tmdb.org/t/p/w500//nLMCRlt0MV2uu4KPbDPDNsPWfBG.jpg"}]
/// substype : 0
/// networkslist : [{"id":7094,"name":"افلام انمي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:42:13.000000Z","updated_at":"2024-10-19T14:05:48.000000Z"}]
/// genres : [{"id":5688,"movie_id":2497,"genre_id":16,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"رسوم متحركة"},{"id":5689,"movie_id":2497,"genre_id":12,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"مغامرة"},{"id":5690,"movie_id":2497,"genre_id":10751,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"عائلي"},{"id":5691,"movie_id":2497,"genre_id":14,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"فانتازيا"},{"id":5692,"movie_id":2497,"genre_id":35,"created_at":"2023-04-15T09:34:12.000000Z","updated_at":"2023-04-15T09:34:12.000000Z","name":"كوميديا"}]
/// videos : [{"id":7691,"movie_id":2497,"server":"240p","header":null,"useragent":null,"link":"https://bxxn.viidshar.com/embed-mrefmtbehgg5.html","lang":"Arabic","video_name":null,"hd":1,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":7692,"movie_id":2497,"server":"360p","header":"https://uqload.com","useragent":null,"link":"https://uqload.co/embed-vchasskqf59z.html","lang":"Arabic","video_name":null,"hd":1,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":7693,"movie_id":2497,"server":"480p","header":null,"useragent":null,"link":"https://dean.govad.xyz/embed-lnq4wr5olc5i.html","lang":"Arabic","video_name":null,"hd":1,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":7694,"movie_id":2497,"server":"480p","header":null,"useragent":null,"link":"https://vadbam.com/embed-f1pwjgxgl59h.html","lang":"Arabic","video_name":null,"hd":1,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2022-07-22T13:38:24.000000Z","updated_at":"2022-07-22T13:38:24.000000Z"},{"id":97171,"movie_id":2497,"server":"VIP MP4","header":null,"useragent":null,"link":"http://akwamegy.sv/movie/8942/اخوان-سوبر-ماريو-الفيلم","lang":"Arabic","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2024-07-25T11:55:21.000000Z","updated_at":"2024-07-25T11:55:21.000000Z"},{"id":97521,"movie_id":2497,"server":"VIP MP4","header":null,"useragent":null,"link":"http://akwamegy.sv/movie/8311/the-super-mario-bros-movie","lang":"Arabic","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2024-07-26T12:08:28.000000Z","updated_at":"2024-07-26T12:08:28.000000Z"},{"id":97522,"movie_id":2497,"server":"VIP MP4","header":null,"useragent":null,"link":"http://akwamegy.sv/movie/8577/the-haunting-2","lang":"Arabic","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2024-07-26T12:08:28.000000Z","updated_at":"2024-07-26T12:08:28.000000Z"},{"id":97523,"movie_id":2497,"server":"VIP MP4","header":null,"useragent":null,"link":"http://akwamegy.sv/movie/8576/the-haunting","lang":"Arabic","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2024-07-26T12:08:28.000000Z","updated_at":"2024-07-26T12:08:28.000000Z"},{"id":106809,"movie_id":2497,"server":"Server Download","header":"https://vidtube.pro/","useragent":null,"link":"https://vidtube.pro/embed-4lga0tpfkueb.html","lang":"Arabic","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2024-07-27T06:24:24.000000Z","updated_at":"2024-07-27T06:24:24.000000Z"},{"id":110744,"movie_id":2497,"server":"VIP Fast","header":null,"useragent":null,"link":"https://www.fasoul.egyfasel/video_player?uid=0$vid=3bdf8d20f9695bf4b2fc245c290fb274$img=https://img.scdns.io/thumb/3bdf8d20f9695bf4b2fc245c290fb274/large.jpg","lang":"1DM","video_name":null,"hd":0,"embed":0,"youtubelink":0,"hls":0,"supported_hosts":1,"downloadonly":0,"drm":0,"drmuuid":null,"drmlicenceuri":null,"status":1,"created_at":"2023-12-23T09:56:34.000000Z","updated_at":"2023-12-23T09:56:34.000000Z"}]
/// downloads : []
/// substitles : []

MediaDetailApiResponseModel mediaDetailApiResponseModelFromJson(String str) => MediaDetailApiResponseModel.fromJson(json.decode(str));
String mediaDetailApiResponseModelToJson(MediaDetailApiResponseModel data) => json.encode(data.toJson());
class MediaDetailApiResponseModel {
  MediaDetailApiResponseModel({
      num? id, 
      num? tmdbId, 
      String? title, 
      String? imdbExternalId, 
      String? originalName, 
      String? subtitle, 
      String? overview, 
      String? posterPath, 
      String? backdropPath, 
      dynamic previewPath, 
      num? voteAverage, 
      dynamic trailerUrl, 
      num? voteCount, 
      num? popularity, 
      String? runtime, 
      num? views, 
      num? featured, 
      num? premuim, 
      num? active, 
      String? releaseDate, 
      num? skiprecapStartIn, 
      num? hasrecap, 
      num? pinned, 
      String? createdAt, 
      String? updatedAt, 
      num? enableStream, 
      num? enableMediaDownload, 
      num? enableAdsUnlock, 
      dynamic backdropPathTv, 
      String? indexCheck, 
      List<Casterslist>? casterslist, 
      num? substype, 
      List<Networkslist>? networkslist, 
      List<Genres>? genres, 
      List<Videos>? videos, 
      List<dynamic>? downloads, 
      List<dynamic>? substitles,}){
    _id = id;
    _tmdbId = tmdbId;
    _title = title;
    _imdbExternalId = imdbExternalId;
    _originalName = originalName;
    _subtitle = subtitle;
    _overview = overview;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _previewPath = previewPath;
    _voteAverage = voteAverage;
    _trailerUrl = trailerUrl;
    _voteCount = voteCount;
    _popularity = popularity;
    _runtime = runtime;
    _views = views;
    _featured = featured;
    _premuim = premuim;
    _active = active;
    _releaseDate = releaseDate;
    _skiprecapStartIn = skiprecapStartIn;
    _hasrecap = hasrecap;
    _pinned = pinned;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _enableStream = enableStream;
    _enableMediaDownload = enableMediaDownload;
    _enableAdsUnlock = enableAdsUnlock;
    _backdropPathTv = backdropPathTv;
    _indexCheck = indexCheck;
    _casterslist = casterslist;
    _substype = substype;
    _networkslist = networkslist;
    _genres = genres;
    _videos = videos;
    _downloads = downloads;
    _substitles = substitles;
}



  MediaDetailApiResponseModel.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _title = json['title'];
    _imdbExternalId = json['imdb_external_id'];
    _originalName = json['original_name'];
    _subtitle = json['subtitle'];
    _overview = json['overview'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _previewPath = json['preview_path'];
    _voteAverage = json['vote_average'];
    _trailerUrl = json['trailer_url'];
    _voteCount = json['vote_count'];
    _popularity = json['popularity'];
    _runtime = json['runtime'];
    _views = json['views'];
    _featured = json['featured'];
    _premuim = json['premuim'];
    _active = json['active'];
    _releaseDate = json['release_date'];
    _skiprecapStartIn = json['skiprecap_start_in'];
    _hasrecap = json['hasrecap'];
    _pinned = json['pinned'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _enableStream = json['enable_stream'];
    _enableMediaDownload = json['enable_media_download'];
    _enableAdsUnlock = json['enable_ads_unlock'];
    _backdropPathTv = json['backdrop_path_tv'];
    _indexCheck = json['indexCheck'];
    if (json['casterslist'] != null) {
      _casterslist = [];
      json['casterslist'].forEach((v) {
        _casterslist?.add(Casterslist.fromJson(v));
      });
    }
    _substype = json['substype'];
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
    if (json['videos'] != null) {
      _videos = [];
      json['videos'].forEach((v) {
        _videos?.add(Videos.fromJson(v));
      });
    }
    if (json['downloads'] != null) {
      _downloads = [];
      json['downloads'].forEach((v) {
        _downloads?.add(v);
      });
    }
    if (json['substitles'] != null) {
      _substitles = [];
      json['substitles'].forEach((v) {
        _substitles?.add(v);
      });
    }
  }
  num? _id;
  num? _tmdbId;
  String? _title;
  String? _imdbExternalId;
  String? _originalName;
  String? _subtitle;
  String? _overview;
  String? _posterPath;
  String? _backdropPath;
  dynamic _previewPath;
  num? _voteAverage;
  dynamic _trailerUrl;
  num? _voteCount;
  num? _popularity;
  String? _runtime;
  num? _views;
  num? _featured;
  num? _premuim;
  num? _active;
  String? _releaseDate;
  num? _skiprecapStartIn;
  num? _hasrecap;
  num? _pinned;
  String? _createdAt;
  String? _updatedAt;
  num? _enableStream;
  num? _enableMediaDownload;
  num? _enableAdsUnlock;
  dynamic _backdropPathTv;
  String? _indexCheck;
  List<Casterslist>? _casterslist;
  num? _substype;
  List<Networkslist>? _networkslist;
  List<Genres>? _genres;
  List<Videos>? _videos;
  List<dynamic>? _downloads;
  List<dynamic>? _substitles;
MediaDetailApiResponseModel copyWith({  num? id,
  num? tmdbId,
  String? title,
  String? imdbExternalId,
  String? originalName,
  String? subtitle,
  String? overview,
  String? posterPath,
  String? backdropPath,
  dynamic previewPath,
  num? voteAverage,
  dynamic trailerUrl,
  num? voteCount,
  num? popularity,
  String? runtime,
  num? views,
  num? featured,
  num? premuim,
  num? active,
  String? releaseDate,
  num? skiprecapStartIn,
  num? hasrecap,
  num? pinned,
  String? createdAt,
  String? updatedAt,
  num? enableStream,
  num? enableMediaDownload,
  num? enableAdsUnlock,
  dynamic backdropPathTv,
  String? indexCheck,
  List<Casterslist>? casterslist,
  num? substype,
  List<Networkslist>? networkslist,
  List<Genres>? genres,
  List<Videos>? videos,
  List<dynamic>? downloads,
  List<dynamic>? substitles,
}) => MediaDetailApiResponseModel(  id: id ?? _id,
  tmdbId: tmdbId ?? _tmdbId,
  title: title ?? _title,
  imdbExternalId: imdbExternalId ?? _imdbExternalId,
  originalName: originalName ?? _originalName,
  subtitle: subtitle ?? _subtitle,
  overview: overview ?? _overview,
  posterPath: posterPath ?? _posterPath,
  backdropPath: backdropPath ?? _backdropPath,
  previewPath: previewPath ?? _previewPath,
  voteAverage: voteAverage ?? _voteAverage,
  trailerUrl: trailerUrl ?? _trailerUrl,
  voteCount: voteCount ?? _voteCount,
  popularity: popularity ?? _popularity,
  runtime: runtime ?? _runtime,
  views: views ?? _views,
  featured: featured ?? _featured,
  premuim: premuim ?? _premuim,
  active: active ?? _active,
  releaseDate: releaseDate ?? _releaseDate,
  skiprecapStartIn: skiprecapStartIn ?? _skiprecapStartIn,
  hasrecap: hasrecap ?? _hasrecap,
  pinned: pinned ?? _pinned,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  enableStream: enableStream ?? _enableStream,
  enableMediaDownload: enableMediaDownload ?? _enableMediaDownload,
  enableAdsUnlock: enableAdsUnlock ?? _enableAdsUnlock,
  backdropPathTv: backdropPathTv ?? _backdropPathTv,
  indexCheck: indexCheck ?? _indexCheck,
  casterslist: casterslist ?? _casterslist,
  substype: substype ?? _substype,
  networkslist: networkslist ?? _networkslist,
  genres: genres ?? _genres,
  videos: videos ?? _videos,
  downloads: downloads ?? _downloads,
  substitles: substitles ?? _substitles,
);
  num? get id => _id;
  num? get tmdbId => _tmdbId;
  String? get title => _title;
  String? get imdbExternalId => _imdbExternalId;
  String? get originalName => _originalName;
  String? get subtitle => _subtitle;
  String? get overview => _overview;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;
  dynamic get previewPath => _previewPath;
  num? get voteAverage => _voteAverage;
  dynamic get trailerUrl => _trailerUrl;
  num? get voteCount => _voteCount;
  num? get popularity => _popularity;
  String? get runtime => _runtime;
  num? get views => _views;
  num? get featured => _featured;
  num? get premuim => _premuim;
  num? get active => _active;
  String? get releaseDate => _releaseDate;
  num? get skiprecapStartIn => _skiprecapStartIn;
  num? get hasrecap => _hasrecap;
  num? get pinned => _pinned;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get enableStream => _enableStream;
  num? get enableMediaDownload => _enableMediaDownload;
  num? get enableAdsUnlock => _enableAdsUnlock;
  dynamic get backdropPathTv => _backdropPathTv;
  String? get indexCheck => _indexCheck;
  List<Casterslist>? get casterslist => _casterslist;
  num? get substype => _substype;
  List<Networkslist>? get networkslist => _networkslist;
  List<Genres>? get genres => _genres;
  List<Videos>? get videos => _videos;
  List<dynamic>? get downloads => _downloads;
  List<dynamic>? get substitles => _substitles;


  MediaDetailsEntity mapToEntity() =>MediaDetailsEntity(  id: id ?? _id,
      tmdbId: tmdbId ?? _tmdbId,
      name: title ?? _title,
      originalName: originalName ?? _originalName,
      imdbExternalId: imdbExternalId ?? _imdbExternalId,
      subtitle: subtitle ?? _subtitle,
      overview: overview ?? _overview,
      posterPath: posterPath ?? _posterPath,
      backdropPath: backdropPath ?? _backdropPath,
      trailerUrl: trailerUrl ?? _trailerUrl,
      previewPath: previewPath ?? _previewPath,
      views: views ?? _views,
      voteAverage: voteAverage ?? _voteAverage,
      voteCount: voteCount ?? _voteCount,
      popularity: popularity ?? _popularity,
      featured: featured ?? _featured,
      pinned: pinned ?? _pinned,
      newEpisodes: 0,
      premuim: premuim ?? _premuim,
      active: active ?? _active,
      firstAirDate: '',
      createdAt: createdAt ?? _createdAt,
      updatedAt: updatedAt ?? _updatedAt,
      backdropPathTv: backdropPathTv ?? _backdropPathTv,
      indexCheck: indexCheck ?? _indexCheck,
      genreslist: [],
      casterslist: casterslist ?? _casterslist,
      networkslist: networkslist ?? _networkslist,
      genres: genres ?? _genres,
      videos: videos??_videos,


      enableAdsUnlock: enableAdsUnlock??_enableAdsUnlock,
      enableMediaDownload: enableMediaDownload??_enableMediaDownload,
      enableStream: enableStream??_enableStream,
      releaseDate: releaseDate??_releaseDate,
      skiprecapStartIn: skiprecapStartIn??_skiprecapStartIn,
      substype: substype??_substype
  );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['title'] = _title;
    map['imdb_external_id'] = _imdbExternalId;
    map['original_name'] = _originalName;
    map['subtitle'] = _subtitle;
    map['overview'] = _overview;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['preview_path'] = _previewPath;
    map['vote_average'] = _voteAverage;
    map['trailer_url'] = _trailerUrl;
    map['vote_count'] = _voteCount;
    map['popularity'] = _popularity;
    map['runtime'] = _runtime;
    map['views'] = _views;
    map['featured'] = _featured;
    map['premuim'] = _premuim;
    map['active'] = _active;
    map['release_date'] = _releaseDate;
    map['skiprecap_start_in'] = _skiprecapStartIn;
    map['hasrecap'] = _hasrecap;
    map['pinned'] = _pinned;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['enable_stream'] = _enableStream;
    map['enable_media_download'] = _enableMediaDownload;
    map['enable_ads_unlock'] = _enableAdsUnlock;
    map['backdrop_path_tv'] = _backdropPathTv;
    map['indexCheck'] = _indexCheck;
    if (_casterslist != null) {
      map['casterslist'] = _casterslist?.map((v) => v.toJson()).toList();
    }
    map['substype'] = _substype;
    if (_networkslist != null) {
      map['networkslist'] = _networkslist?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_videos != null) {
      map['videos'] = _videos?.map((v) => v.toJson()).toList();
    }
    if (_downloads != null) {
      map['downloads'] = _downloads?.map((v) => v.toJson()).toList();
    }
    if (_substitles != null) {
      map['substitles'] = _substitles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
