import 'dart:convert';

import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';

import 'networks_list.dart';
/// current_page : 1
/// data : [{"title":"Jurnal Risa by Risa Saraswati","id":27144,"poster_path":"https://image.tmdb.org/t/p/w500/2F1TPaYdPW1hzJCXfOBOH7xK6Pd.jpg","vote_average":4.8,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7095,"name":"افلام اسيوي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:42:25.000000Z","updated_at":"2024-10-19T14:04:15.000000Z"}],"genres":[{"id":55699,"movie_id":27144,"genre_id":99,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"وثائقي"},{"id":55700,"movie_id":27144,"genre_id":27,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"رعب"},{"id":55701,"movie_id":27144,"genre_id":53,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"إثارة"}],"downloads":[],"networks":[{"id":22786,"movie_id":27144,"network_id":7095,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام اسيوي"}]},{"title":"Red One","id":27143,"poster_path":"https://image.tmdb.org/t/p/w500/cdqLnri3NEGcmfnqwk2TSIYtddg.jpg","vote_average":7.1,"subtitle":"HDCAM","type":"movie","substype":0,"networkslist":[{"id":7093,"name":"افلام اجنبي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:40:12.000000Z","updated_at":"2023-10-02T17:40:12.000000Z"}],"genres":[{"id":55696,"movie_id":27143,"genre_id":35,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"كوميديا"},{"id":55697,"movie_id":27143,"genre_id":28,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"حركة"},{"id":55698,"movie_id":27143,"genre_id":14,"created_at":"2024-11-10T08:38:16.000000Z","updated_at":"2024-11-10T08:38:16.000000Z","name":"فانتازيا"}],"downloads":[],"networks":[{"id":22788,"movie_id":27143,"network_id":7093,"created_at":"2024-11-11T06:48:40.000000Z","updated_at":"2024-11-11T06:48:40.000000Z","name":"افلام اجنبي"}]},{"title":"Black Cab","id":27151,"poster_path":"https://image.tmdb.org/t/p/w500/OydsAHa1bLDQGaKIU7qW9SRjQb.jpg","vote_average":7.2,"subtitle":null,"type":"movie","substype":0,"networkslist":[],"genres":[{"id":55713,"movie_id":27151,"genre_id":27,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"رعب"},{"id":55714,"movie_id":27151,"genre_id":53,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"إثارة"}],"downloads":[],"networks":[]},{"title":"Shark Warning","id":27150,"poster_path":"https://image.tmdb.org/t/p/w500/jrVyGN0sQCqfN1Xqh7XfU8kToFw.jpg","vote_average":4.5,"subtitle":null,"type":"movie","substype":0,"networkslist":[],"genres":[{"id":55711,"movie_id":27150,"genre_id":28,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"حركة"},{"id":55712,"movie_id":27150,"genre_id":27,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"رعب"}],"downloads":[],"networks":[]},{"title":"War Blade","id":27149,"poster_path":"https://image.tmdb.org/t/p/w500/mNyEZgyxHkvUgmsJsvZT3ks5Y7B.jpg","vote_average":4.9,"subtitle":null,"type":"movie","substype":0,"networkslist":[],"genres":[{"id":55709,"movie_id":27149,"genre_id":10752,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"حرب"},{"id":55710,"movie_id":27149,"genre_id":53,"created_at":"2024-11-10T07:05:50.000000Z","updated_at":"2024-11-10T07:05:50.000000Z","name":"إثارة"}],"downloads":[],"networks":[]},{"title":"A Balloon’s Landing","id":27148,"poster_path":"http://image.tmdb.org/t/p/w500/r6FDABER9ZVPwfihTzXF4GrqE1X.jpg","vote_average":7,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7095,"name":"افلام اسيوي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:42:25.000000Z","updated_at":"2024-10-19T14:04:15.000000Z"}],"genres":[{"id":55708,"movie_id":27148,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"networks":[{"id":22787,"movie_id":27148,"network_id":7095,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام اسيوي"}]},{"title":"Je jatt Vigarh gya","id":27147,"poster_path":"http://image.tmdb.org/t/p/w500/diezoZdgczC0N2PcVVdyqouGd6l.jpg","vote_average":0,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7096,"name":"افلام هندي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:42:37.000000Z","updated_at":"2024-10-19T14:05:22.000000Z"}],"genres":[{"id":55707,"movie_id":27147,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"networks":[{"id":22785,"movie_id":27147,"network_id":7096,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام هندي"}]},{"title":"Wir könnten genauso gut tot sein","id":27146,"poster_path":"http://image.tmdb.org/t/p/w500/8Ops8d5fMrATx76foD6buqM7OWf.jpg","vote_average":5.1,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7093,"name":"افلام اجنبي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:40:12.000000Z","updated_at":"2023-10-02T17:40:12.000000Z"}],"genres":[{"id":55705,"movie_id":27146,"genre_id":35,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"كوميديا"},{"id":55706,"movie_id":27146,"genre_id":18,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"دراما"}],"downloads":[],"networks":[{"id":22784,"movie_id":27146,"network_id":7093,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام اجنبي"}]},{"title":"Elevation","id":27145,"poster_path":"http://image.tmdb.org/t/p/w500/uQhYBxOVFU6s9agD49FnGHwJqG5.jpg","vote_average":5.5,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7093,"name":"افلام اجنبي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:40:12.000000Z","updated_at":"2023-10-02T17:40:12.000000Z"}],"genres":[{"id":55702,"movie_id":27145,"genre_id":28,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"حركة"},{"id":55703,"movie_id":27145,"genre_id":878,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"خيال علمي"},{"id":55704,"movie_id":27145,"genre_id":53,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"إثارة"}],"downloads":[],"networks":[{"id":22781,"movie_id":27145,"network_id":7093,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام اجنبي"}]},{"title":"وداعًا حمدي","id":27141,"poster_path":"https://image.tmdb.org/t/p/w500/itXCDPLkWqVRlUFgk3w0crrTjgB.jpg","vote_average":0,"subtitle":"HDCAM","type":"movie","substype":0,"networkslist":[],"genres":[{"id":55693,"movie_id":27141,"genre_id":35,"created_at":"2024-11-09T16:26:42.000000Z","updated_at":"2024-11-09T16:26:42.000000Z","name":"كوميديا"}],"downloads":[],"networks":[]},{"title":"الهوى سلطان","id":27140,"poster_path":"https://image.tmdb.org/t/p/w500/5TKfFaNXDaI85qeGT7av2K4n2Mi.jpg","vote_average":0,"subtitle":"HDCAM","type":"movie","substype":0,"networkslist":[],"genres":[{"id":55691,"movie_id":27140,"genre_id":18,"created_at":"2024-11-09T16:25:29.000000Z","updated_at":"2024-11-09T16:25:29.000000Z","name":"دراما"},{"id":55692,"movie_id":27140,"genre_id":10749,"created_at":"2024-11-09T16:25:29.000000Z","updated_at":"2024-11-09T16:25:29.000000Z","name":"رومنسية"}],"downloads":[],"networks":[]},{"title":"Picnic","id":27142,"poster_path":"https://image.tmdb.org/t/p/w500/aefp8l9VVMTqNebxlRIuQCaVwUG.jpg","vote_average":6,"subtitle":null,"type":"movie","substype":0,"networkslist":[{"id":7095,"name":"افلام اسيوي","logo_path":null,"origin_country":null,"created_at":"2023-10-02T17:42:25.000000Z","updated_at":"2024-10-19T14:04:15.000000Z"}],"genres":[{"id":55694,"movie_id":27142,"genre_id":10751,"created_at":"2024-11-09T08:15:04.000000Z","updated_at":"2024-11-09T08:15:04.000000Z","name":"عائلي"},{"id":55695,"movie_id":27142,"genre_id":18,"created_at":"2024-11-09T08:15:04.000000Z","updated_at":"2024-11-09T08:15:04.000000Z","name":"دراما"}],"downloads":[],"networks":[{"id":22783,"movie_id":27142,"network_id":7095,"created_at":"2024-11-10T03:30:30.000000Z","updated_at":"2024-11-10T03:30:30.000000Z","name":"افلام اسيوي"}]}]
/// first_page_url : "https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1"
/// from : 1
/// last_page : 35
/// last_page_url : "https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=35"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1","label":"1","active":true},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"2","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=3","label":"3","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=4","label":"4","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=5","label":"5","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=6","label":"6","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=7","label":"7","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=8","label":"8","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=9","label":"9","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=34","label":"34","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=35","label":"35","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2"
/// path : "https://abcdef.flech.tn/egybestant/public/api/movies/latestadded/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq"
/// per_page : 12
/// prev_page_url : null
/// to : 12
/// total : 416

MoviesLatestAddedResponseModel moviesLatestAddedResponseModelFromJson(String str) => MoviesLatestAddedResponseModel.fromJson(json.decode(str));
String moviesLatestAddedResponseModelToJson(MoviesLatestAddedResponseModel data) => json.encode(data.toJson());
class MoviesLatestAddedResponseModel {
  MoviesLatestAddedResponseModel({
      num? currentPage, 
      List<MediaDetailsEntity>? data, 
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

  MoviesLatestAddedResponseModel.fromJson(dynamic json) {
    _currentPage = json['current_page'];


    for(String itemKey in ['data','search','featured','recommended','trending','suggested'])
    {

      if (json[itemKey] != null) {
        _data = [];
        json[itemKey].forEach((v) {
          _data?.add(MediaDetailsEntity.fromJson(v));
        });
      }
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
  List<MediaDetailsEntity>? _data;
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
MoviesLatestAddedResponseModel copyWith({  num? currentPage,
  List<MediaDetailsEntity>? data,
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
}) => MoviesLatestAddedResponseModel(  currentPage: currentPage ?? _currentPage,
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
  List<MediaDetailsEntity>? get data => _data;
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

