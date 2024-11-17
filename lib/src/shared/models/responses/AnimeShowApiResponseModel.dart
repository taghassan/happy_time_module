import 'dart:convert';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/models/responses/casters_list.dart';

import 'GenresResponseModel.dart';
import 'episodes_list.dart';
import 'seasons_list.dart';

AnimeShowApiResponseModel animeShowApiResponseModelFromJson(String str) => AnimeShowApiResponseModel.fromJson(json.decode(str));
String animeShowApiResponseModelToJson(AnimeShowApiResponseModel data) => json.encode(data.toJson());
class AnimeShowApiResponseModel {
  AnimeShowApiResponseModel({
      num? id, 
      num? tmdbId, 
      String? name, 
      String? originalName, 
      String? imdbExternalId, 
      String? overview, 
      String? subtitle, 
      String? posterPath, 
      String? backdropPath, 
      String? previewPath, 
      dynamic trailerUrl, 
      num? views, 
      num? voteAverage, 
      num? voteCount, 
      num? popularity, 
      num? active, 
      num? isAnime, 
      num? premuim, 
      num? pinned, 
      num? newEpisodes, 
      num? featured, 
      String? firstAirDate, 
      String? createdAt, 
      String? updatedAt, 
      dynamic backdropPathTv, 
      String? indexCheck, 
      List<String>? genreslist, 
      List<Casterslist>? casterslist,
      List<Genres>? genres, 
      List<Seasons>? seasons,}){
    _id = id;
    _tmdbId = tmdbId;
    _name = name;
    _originalName = originalName;
    _imdbExternalId = imdbExternalId;
    _overview = overview;
    _subtitle = subtitle;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
    _previewPath = previewPath;
    _trailerUrl = trailerUrl;
    _views = views;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
    _popularity = popularity;
    _active = active;
    _isAnime = isAnime;
    _premuim = premuim;
    _pinned = pinned;
    _newEpisodes = newEpisodes;
    _featured = featured;
    _firstAirDate = firstAirDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _backdropPathTv = backdropPathTv;
    _indexCheck = indexCheck;
    _genreslist = genreslist;
    _casterslist = casterslist;
    _genres = genres;
    _seasons = seasons;
}

  AnimeShowApiResponseModel.fromJson(dynamic json) {
    _id = json['id'];
    _tmdbId = json['tmdb_id'];
    _name = json['name'];
    _originalName = json['original_name'];
    _imdbExternalId = json['imdb_external_id'];
    _overview = json['overview'];
    _subtitle = json['subtitle'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
    _previewPath = json['preview_path'];
    _trailerUrl = json['trailer_url'];
    _views = json['views'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
    _popularity = json['popularity'];
    _active = json['active'];
    _isAnime = json['is_anime'];
    _premuim = json['premuim'];
    _pinned = json['pinned'];
    _newEpisodes = json['newEpisodes'];
    _featured = json['featured'];
    _firstAirDate = json['first_air_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _backdropPathTv = json['backdrop_path_tv'];
    _indexCheck = json['indexCheck'];
    _genreslist = json['genreslist'] != null ? json['genreslist'].cast<String>() : [];
    if (json['casterslist'] != null) {
      _casterslist = [];
      json['casterslist'].forEach((v) {
        _casterslist?.add(Casterslist.fromJson(v));
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
  }
  num? _id;
  num? _tmdbId;
  String? _name;
  String? _originalName;
  String? _imdbExternalId;
  String? _overview;
  String? _subtitle;
  String? _posterPath;
  String? _backdropPath;
  String? _previewPath;
  dynamic _trailerUrl;
  num? _views;
  num? _voteAverage;
  num? _voteCount;
  num? _popularity;
  num? _active;
  num? _isAnime;
  num? _premuim;
  num? _pinned;
  num? _newEpisodes;
  num? _featured;
  String? _firstAirDate;
  String? _createdAt;
  String? _updatedAt;
  dynamic _backdropPathTv;
  String? _indexCheck;
  List<String>? _genreslist;
  List<Casterslist>? _casterslist;
  List<Genres>? _genres;
  List<Seasons>? _seasons;

  num? get id => _id;
  num? get tmdbId => _tmdbId;
  String? get name => _name;
  String? get originalName => _originalName;
  String? get imdbExternalId => _imdbExternalId;
  String? get overview => _overview;
  String? get subtitle => _subtitle;
  String? get posterPath => _posterPath;
  String? get backdropPath => _backdropPath;
  String? get previewPath => _previewPath;
  dynamic get trailerUrl => _trailerUrl;
  num? get views => _views;
  num? get voteAverage => _voteAverage;
  num? get voteCount => _voteCount;
  num? get popularity => _popularity;
  num? get active => _active;
  num? get isAnime => _isAnime;
  num? get premuim => _premuim;
  num? get pinned => _pinned;
  num? get newEpisodes => _newEpisodes;
  num? get featured => _featured;
  String? get firstAirDate => _firstAirDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get backdropPathTv => _backdropPathTv;
  String? get indexCheck => _indexCheck;
  List<String>? get genreslist => _genreslist;
  List<Casterslist>? get casterslist => _casterslist;
  List<Genres>? get genres => _genres;
  List<Seasons>? get seasons => _seasons;

  MediaDetailsEntity mapToEntity() =>MediaDetailsEntity(  id: id ?? _id,
    tmdbId: tmdbId ?? _tmdbId,
    name: name ?? _name,
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
    newEpisodes: newEpisodes ?? _newEpisodes,
    premuim: premuim ?? _premuim,
    active: active ?? _active,
    firstAirDate: firstAirDate ?? _firstAirDate,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    backdropPathTv: backdropPathTv ?? _backdropPathTv,
    indexCheck: indexCheck ?? _indexCheck,
    genreslist: genreslist ?? _genreslist,
    casterslist: casterslist ?? _casterslist,
    networkslist: [],
    genres: genres ?? _genres,
    seasons: seasons ?? _seasons,
  );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tmdb_id'] = _tmdbId;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['imdb_external_id'] = _imdbExternalId;
    map['overview'] = _overview;
    map['subtitle'] = _subtitle;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    map['preview_path'] = _previewPath;
    map['trailer_url'] = _trailerUrl;
    map['views'] = _views;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    map['popularity'] = _popularity;
    map['active'] = _active;
    map['is_anime'] = _isAnime;
    map['premuim'] = _premuim;
    map['pinned'] = _pinned;
    map['newEpisodes'] = _newEpisodes;
    map['featured'] = _featured;
    map['first_air_date'] = _firstAirDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['backdrop_path_tv'] = _backdropPathTv;
    map['indexCheck'] = _indexCheck;
    map['genreslist'] = _genreslist;
    if (_casterslist != null) {
      map['casterslist'] = _casterslist?.map((v) => v.toJson()).toList();
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




