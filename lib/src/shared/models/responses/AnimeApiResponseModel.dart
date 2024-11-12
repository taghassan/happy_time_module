import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/MediaResponseModel.dart';
/// current_page : 1
/// data : [{"id":69,"name":"المؤسس عثمان مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/oW4Lt0J4cJrRrk66q9bkPNQTuwp.jpg","vote_average":7.9,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["حرب وسياسة","حركة ومغامرة","دراما","وثائقي"],"genres":[{"id":187,"anime_id":69,"genre_id":10768,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حرب وسياسة"},{"id":188,"anime_id":69,"genre_id":10759,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"حركة ومغامرة"},{"id":189,"anime_id":69,"genre_id":18,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"دراما"},{"id":190,"anime_id":69,"genre_id":99,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"وثائقي"}],"networks":[{"id":217,"anime_id":69,"network_id":36,"created_at":"2023-07-22T13:38:24.000000Z","updated_at":"2023-07-22T13:38:24.000000Z","name":"atv"},{"id":568,"anime_id":69,"network_id":7014,"created_at":"2023-10-20T16:55:20.000000Z","updated_at":"2023-10-20T16:55:20.000000Z","name":"مسلسلات تركية"}]},{"id":532,"name":"المفقود مدبلج","poster_path":"https://flech.tn/egybestant/public/api/animes/image/p5qKKAYwGw1ZdCmMSzNBFkvQDuTrhEYVPppkG7lL.jpg","vote_average":null,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":[],"genres":[],"networks":[{"id":1020,"anime_id":532,"network_id":7014,"created_at":"2024-11-11T18:56:27.000000Z","updated_at":"2024-11-11T18:56:27.000000Z","name":"مسلسلات تركية"}]},{"id":398,"name":"المتوحش مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/frotUcj0HpfQmcpYFX5uoLaPlf3.jpg","vote_average":9.5,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":650,"anime_id":398,"genre_id":18,"created_at":"2023-10-31T13:31:11.000000Z","updated_at":"2023-10-31T13:31:11.000000Z","name":"دراما"}],"networks":[{"id":768,"anime_id":398,"network_id":303,"created_at":"2023-10-31T13:31:11.000000Z","updated_at":"2023-10-31T13:31:11.000000Z","name":"FOX"},{"id":769,"anime_id":398,"network_id":7014,"created_at":"2023-11-03T11:57:12.000000Z","updated_at":"2023-11-03T11:57:12.000000Z","name":"مسلسلات تركية"}]},{"id":529,"name":"ابتسم لقدرك مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/5vUHQH4vxppo4pwC2GrrZujZQe7.jpg","vote_average":8,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["عائلي","دراما"],"genres":[{"id":857,"anime_id":529,"genre_id":10751,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"عائلي"},{"id":858,"anime_id":529,"genre_id":18,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"دراما"}],"networks":[{"id":1014,"anime_id":529,"network_id":303,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"FOX"},{"id":1015,"anime_id":529,"network_id":7014,"created_at":"2024-11-06T18:59:04.000000Z","updated_at":"2024-11-06T18:59:04.000000Z","name":"مسلسلات تركية"}]},{"id":96,"name":"الحفرة مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/dyFmwlAQCEUNQ1JuFothxO1G0zz.jpg","vote_average":7.86,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["جريمة","حركة ومغامرة","دراما"],"genres":[{"id":237,"anime_id":96,"genre_id":80,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"جريمة"},{"id":238,"anime_id":96,"genre_id":10759,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"حركة ومغامرة"},{"id":239,"anime_id":96,"genre_id":18,"created_at":"2023-07-29T14:39:38.000000Z","updated_at":"2023-07-29T14:39:38.000000Z","name":"دراما"}],"networks":[{"id":248,"anime_id":96,"network_id":750,"created_at":"2023-07-29T14:39:39.000000Z","updated_at":"2023-07-29T14:39:39.000000Z","name":"Show TV"},{"id":485,"anime_id":96,"network_id":7014,"created_at":"2023-10-19T09:04:40.000000Z","updated_at":"2023-10-19T09:04:40.000000Z","name":"مسلسلات تركية"}]},{"id":509,"name":"ليلى مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/piMRB2g1p9F2huRNnSZMne8NNVF.jpg","vote_average":10,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":821,"anime_id":509,"genre_id":18,"created_at":"2024-10-04T15:11:08.000000Z","updated_at":"2024-10-04T15:11:08.000000Z","name":"دراما"}],"networks":[{"id":972,"anime_id":509,"network_id":3626,"created_at":"2024-10-04T15:11:08.000000Z","updated_at":"2024-10-04T15:11:08.000000Z","name":"Shahid"},{"id":973,"anime_id":509,"network_id":7380,"created_at":"2024-10-04T15:11:08.000000Z","updated_at":"2024-10-04T15:11:08.000000Z","name":"Now"},{"id":974,"anime_id":509,"network_id":7014,"created_at":"2024-10-04T16:11:29.000000Z","updated_at":"2024-10-04T16:11:29.000000Z","name":"مسلسلات تركية"}]},{"id":185,"name":"حكايتنا مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/gjt8jB36i5YYg79Fi10ez6IcLgk.jpg","vote_average":8.33,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["كوميديا","دراما","عائلي"],"genres":[{"id":379,"anime_id":185,"genre_id":35,"created_at":"2023-08-23T16:33:11.000000Z","updated_at":"2023-08-23T16:33:11.000000Z","name":"كوميديا"},{"id":380,"anime_id":185,"genre_id":18,"created_at":"2023-08-23T16:33:11.000000Z","updated_at":"2023-08-23T16:33:11.000000Z","name":"دراما"},{"id":828,"anime_id":185,"genre_id":10751,"created_at":"2024-10-06T16:29:04.000000Z","updated_at":"2024-10-06T16:29:04.000000Z","name":"عائلي"}],"networks":[{"id":518,"anime_id":185,"network_id":7014,"created_at":"2023-10-20T14:48:08.000000Z","updated_at":"2023-10-20T14:48:08.000000Z","name":"مسلسلات تركية"},{"id":981,"anime_id":185,"network_id":303,"created_at":"2024-10-06T16:29:04.000000Z","updated_at":"2024-10-06T16:29:04.000000Z","name":"FOX"}]},{"id":521,"name":"القسمة مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/v5m3PpCzIwD4gYRInzHBSej3xxc.jpg","vote_average":6,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["كوميديا","دراما"],"genres":[{"id":843,"anime_id":521,"genre_id":35,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"كوميديا"},{"id":844,"anime_id":521,"genre_id":18,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"دراما"}],"networks":[{"id":998,"anime_id":521,"network_id":303,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"FOX"},{"id":999,"anime_id":521,"network_id":7014,"created_at":"2024-10-28T02:10:38.000000Z","updated_at":"2024-10-28T02:10:38.000000Z","name":"مسلسلات تركية"},{"id":1000,"anime_id":521,"network_id":6928,"created_at":"2024-10-28T02:10:38.000000Z","updated_at":"2024-10-28T02:10:38.000000Z","name":"تركيا"}]},{"id":340,"name":"ايزيل مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/52Js8g74tqk5PdaAIVxnVKqEqo7.jpg","vote_average":8.36,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["جريمة","دراما","حركة ومغامرة"],"genres":[{"id":565,"anime_id":340,"genre_id":80,"created_at":"2023-10-21T12:43:38.000000Z","updated_at":"2023-10-21T12:43:38.000000Z","name":"جريمة"},{"id":566,"anime_id":340,"genre_id":18,"created_at":"2023-10-21T12:43:38.000000Z","updated_at":"2023-10-21T12:43:38.000000Z","name":"دراما"},{"id":567,"anime_id":340,"genre_id":10759,"created_at":"2023-10-21T12:43:38.000000Z","updated_at":"2023-10-21T12:43:38.000000Z","name":"حركة ومغامرة"}],"networks":[{"id":642,"anime_id":340,"network_id":750,"created_at":"2023-10-21T12:43:38.000000Z","updated_at":"2023-10-21T12:43:38.000000Z","name":"Show TV"},{"id":643,"anime_id":340,"network_id":36,"created_at":"2023-10-21T12:43:38.000000Z","updated_at":"2023-10-21T12:43:38.000000Z","name":"atv"},{"id":644,"anime_id":340,"network_id":7014,"created_at":"2023-10-21T13:43:45.000000Z","updated_at":"2023-10-21T13:43:45.000000Z","name":"مسلسلات تركية"}]},{"id":203,"name":"رباط الحب مدبلج","poster_path":"https://test.flech.tn/egybest/public/api/animes/image/jfSU99ZgCIag53Pqi0vQ8RJZuTMoQvl9zMUWe4rp.jpg","vote_average":null,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":[],"genres":[],"networks":[]},{"id":448,"name":"رجل العصا  مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/bIaMSsrhOdFh2KUtAsrptG3msgw.jpg","vote_average":7.5,"subtitle":"مدبلج الحلقة 90","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":737,"anime_id":448,"genre_id":18,"created_at":"2024-03-13T13:43:53.000000Z","updated_at":"2024-03-13T13:43:53.000000Z","name":"دراما"}],"networks":[{"id":852,"anime_id":448,"network_id":778,"created_at":"2024-03-13T13:43:53.000000Z","updated_at":"2024-03-13T13:43:53.000000Z","name":"Star TV"},{"id":853,"anime_id":448,"network_id":7014,"created_at":"2024-03-13T14:44:05.000000Z","updated_at":"2024-03-13T14:44:05.000000Z","name":"مسلسلات تركية"}]},{"id":137,"name":"رامو مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/tfdc5RHdddhtTvIwuDipkBzBE6y.jpg","vote_average":8,"subtitle":"مدبلج","is_anime":1,"type":"anime","genreslist":["دراما"],"genres":[{"id":304,"anime_id":137,"genre_id":18,"created_at":"2023-08-09T12:12:03.000000Z","updated_at":"2023-08-09T12:12:03.000000Z","name":"دراما"}],"networks":[{"id":293,"anime_id":137,"network_id":750,"created_at":"2023-08-09T12:12:03.000000Z","updated_at":"2023-08-09T12:12:03.000000Z","name":"Show TV"},{"id":294,"anime_id":137,"network_id":5615,"created_at":"2023-08-09T12:12:03.000000Z","updated_at":"2023-08-09T12:12:03.000000Z","name":"UTV IRAQ"},{"id":295,"anime_id":137,"network_id":5369,"created_at":"2023-08-09T12:12:03.000000Z","updated_at":"2023-08-09T12:12:03.000000Z","name":"Weyyak"},{"id":698,"anime_id":137,"network_id":7014,"created_at":"2023-10-22T13:30:36.000000Z","updated_at":"2023-10-22T13:30:36.000000Z","name":"مسلسلات تركية"}]}]
/// first_page_url : "https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1"
/// from : 1
/// last_page : 33
/// last_page_url : "https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=33"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1","label":"1","active":true},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"2","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=3","label":"3","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=4","label":"4","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=5","label":"5","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=6","label":"6","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=7","label":"7","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=8","label":"8","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=9","label":"9","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=32","label":"32","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=33","label":"33","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2"
/// path : "https://abcdef.flech.tn/egybestant/public/api/genres/animes/all/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq"
/// per_page : 12
/// prev_page_url : null
/// to : 12
/// total : 388

AnimeApiResponseModel animeApiResponseModelFromJson(String str) => AnimeApiResponseModel.fromJson(json.decode(str));
String animeApiResponseModelToJson(AnimeApiResponseModel data) => json.encode(data.toJson());
class AnimeApiResponseModel {
  AnimeApiResponseModel({
      num? currentPage, 
      List<MediaResponseModel>? data, 
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

  AnimeApiResponseModel.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(MediaResponseModel.fromJson(v));
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
  List<MediaResponseModel>? _data;
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
AnimeApiResponseModel copyWith({  num? currentPage,
  List<MediaResponseModel>? data,
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
}) => AnimeApiResponseModel(  currentPage: currentPage ?? _currentPage,
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
  List<MediaResponseModel>? get data => _data;
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

/// id : 217
/// anime_id : 69
/// network_id : 36
/// created_at : "2023-07-22T13:38:24.000000Z"
/// updated_at : "2023-07-22T13:38:24.000000Z"
/// name : "atv"

Networks networksFromJson(String str) => Networks.fromJson(json.decode(str));
String networksToJson(Networks data) => json.encode(data.toJson());
class Networks {
  Networks({
      num? id, 
      num? animeId, 
      num? networkId, 
      String? createdAt, 
      String? updatedAt, 
      String? name,}){
    _id = id;
    _animeId = animeId;
    _networkId = networkId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _name = name;
}

  Networks.fromJson(dynamic json) {
    _id = json['id'];
    _animeId = json['anime_id'];
    _networkId = json['network_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _name = json['name'];
  }
  num? _id;
  num? _animeId;
  num? _networkId;
  String? _createdAt;
  String? _updatedAt;
  String? _name;
Networks copyWith({  num? id,
  num? animeId,
  num? networkId,
  String? createdAt,
  String? updatedAt,
  String? name,
}) => Networks(  id: id ?? _id,
  animeId: animeId ?? _animeId,
  networkId: networkId ?? _networkId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  name: name ?? _name,
);
  num? get id => _id;
  num? get animeId => _animeId;
  num? get networkId => _networkId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['anime_id'] = _animeId;
    map['network_id'] = _networkId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['name'] = _name;
    return map;
  }

}

