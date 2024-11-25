import 'dart:convert';

import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
/// current_page : 1
/// data : [{"name":"بنات الثانوي","id":61,"poster_path":"https://image.tmdb.org/t/p/w500/j0tnGYO2GM1fr70vaEgDM4UP228.jpg","vote_average":9,"subtitle":null,"updated_at":"2024-11-12T09:16:23.000000Z","type":"serie","genreslist":[],"genres":[]},{"name":"ضرب نار","id":419,"poster_path":"https://image.tmdb.org/t/p/w500/a4KXcQUwNhSuZkcYxeKgqxVPTKg.jpg","vote_average":2,"subtitle":null,"updated_at":"2024-11-12T09:14:08.000000Z","type":"serie","genreslist":["دراما"],"genres":[{"id":708,"serie_id":419,"genre_id":18,"created_at":"2023-03-07T13:28:44.000000Z","updated_at":"2023-03-07T13:28:44.000000Z","name":"دراما"}]},{"name":"الكبير أوي","id":124,"poster_path":"https://flech.tn/egybest/public/api/series/image/pfBjH3Mn9ksfHnsSZeeDUHBpZ4YkEUe2xp0FmPJz.jpg","vote_average":6.8,"subtitle":"الحلقة الأخيرة","updated_at":"2024-11-12T09:10:11.000000Z","type":"serie","genreslist":["كوميديا","عائلي","دراما"],"genres":[{"id":222,"serie_id":124,"genre_id":35,"created_at":"2022-11-03T05:31:40.000000Z","updated_at":"2022-11-03T05:31:40.000000Z","name":"كوميديا"},{"id":223,"serie_id":124,"genre_id":10751,"created_at":"2022-11-03T05:31:40.000000Z","updated_at":"2022-11-03T05:31:40.000000Z","name":"عائلي"},{"id":224,"serie_id":124,"genre_id":18,"created_at":"2022-11-03T05:31:40.000000Z","updated_at":"2022-11-03T05:31:40.000000Z","name":"دراما"}]},{"name":"المداح","id":103,"poster_path":"https://test.flech.tn/egybest/public/api/series/image/vkwGoZ8U8JcSy8vejtLjKMsfxCUL6jRKwQ3PEEeb.jpg","vote_average":6,"subtitle":"الحلقة الأخيرة","updated_at":"2024-11-12T09:08:58.000000Z","type":"serie","genreslist":["دراما"],"genres":[{"id":190,"serie_id":103,"genre_id":18,"created_at":"2022-10-26T18:08:18.000000Z","updated_at":"2022-10-26T18:08:18.000000Z","name":"دراما"}]},{"name":"الثمانية","id":8,"poster_path":"https://image.tmdb.org/t/p/w500/rlx0lZdXW5DdzBdXJJse9hwF4M0.jpg","vote_average":0,"subtitle":null,"updated_at":"2024-11-12T09:08:10.000000Z","type":"serie","genreslist":["حركة ومغامرة","دراما"],"genres":[{"id":17,"serie_id":8,"genre_id":10759,"created_at":"2022-09-14T23:24:52.000000Z","updated_at":"2022-09-14T23:24:52.000000Z","name":"حركة ومغامرة"},{"id":18,"serie_id":8,"genre_id":18,"created_at":"2022-09-14T23:24:52.000000Z","updated_at":"2022-09-14T23:24:52.000000Z","name":"دراما"}]},{"name":"بالطو","id":295,"poster_path":"https://image.tmdb.org/t/p/w500/seQugHhHUhf0CyoxmuC1zuuoSBF.jpg","vote_average":9,"subtitle":null,"updated_at":"2024-11-12T09:07:58.000000Z","type":"serie","genreslist":[],"genres":[]},{"name":"اللعبة","id":86,"poster_path":"https://test.flech.tn/egybest/public/api/series/image/tVFGquowIza3fcgkviJbw6MqqTOfJnkDeGODtxsS.jpg","vote_average":5,"subtitle":"الحلقة 30","updated_at":"2024-11-12T09:05:52.000000Z","type":"serie","genreslist":["كوميديا","عائلي"],"genres":[{"id":165,"serie_id":86,"genre_id":35,"created_at":"2022-10-18T03:46:19.000000Z","updated_at":"2022-10-18T03:46:19.000000Z","name":"كوميديا"},{"id":166,"serie_id":86,"genre_id":10751,"created_at":"2022-10-18T03:46:19.000000Z","updated_at":"2022-10-18T03:46:19.000000Z","name":"عائلي"}]},{"name":"النمر","id":155,"poster_path":"https://image.tmdb.org/t/p/w500/mMOKlScxZLE98hf9wNHP5GO9bLT.jpg","vote_average":8.8,"subtitle":null,"updated_at":"2024-11-12T09:05:03.000000Z","type":"serie","genreslist":["دراما","حركة ومغامرة"],"genres":[{"id":282,"serie_id":155,"genre_id":18,"created_at":"2022-11-12T09:02:27.000000Z","updated_at":"2022-11-12T09:02:27.000000Z","name":"دراما"},{"id":283,"serie_id":155,"genre_id":10759,"created_at":"2022-11-12T09:02:27.000000Z","updated_at":"2022-11-12T09:02:27.000000Z","name":"حركة ومغامرة"}]},{"name":"حجرة ورقة مقص مدبلج","id":481,"poster_path":"https://image.tmdb.org/t/p/w500/3VKVa9poU1OR8Jy9oEij616vvMI.jpg","vote_average":8.5,"subtitle":"مدبلج","updated_at":"2024-11-12T09:03:21.000000Z","type":"anime","genreslist":[],"genres":[]},{"name":"توبة","id":71,"poster_path":"https://image.tmdb.org/t/p/w500/12q480kNmWCLeaQ4qaoLHVjRMuW.jpg","vote_average":10,"subtitle":null,"updated_at":"2024-11-12T09:00:17.000000Z","type":"serie","genreslist":["دراما"],"genres":[{"id":138,"serie_id":71,"genre_id":18,"created_at":"2022-10-10T06:13:13.000000Z","updated_at":"2022-10-10T06:13:13.000000Z","name":"دراما"}]},{"name":"موضوع عائلي","id":1762,"poster_path":"https://image.tmdb.org/t/p/w500/dhnjCwGFGucsCrxFHBnj9fIIScR.jpg","vote_average":7.4,"subtitle":null,"updated_at":"2024-11-12T09:00:12.000000Z","type":"serie","genreslist":["كوميديا"],"genres":[{"id":3366,"serie_id":1762,"genre_id":35,"created_at":"2023-08-09T10:48:43.000000Z","updated_at":"2023-08-09T10:48:43.000000Z","name":"كوميديا"}]},{"name":"الاجهر","id":413,"poster_path":"https://image.tmdb.org/t/p/w500/5anEQgF49OPnrlCTQk3DfAOdTJm.jpg","vote_average":5,"subtitle":null,"updated_at":"2024-11-12T08:57:26.000000Z","type":"serie","genreslist":["دراما"],"genres":[{"id":702,"serie_id":413,"genre_id":18,"created_at":"2023-03-07T13:23:53.000000Z","updated_at":"2023-03-07T13:23:53.000000Z","name":"دراما"}]}]
/// first_page_url : "https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1"
/// from : 1
/// last_page : 18
/// last_page_url : "https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=18"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=1","label":"1","active":true},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"2","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=3","label":"3","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=4","label":"4","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=5","label":"5","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=6","label":"6","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=7","label":"7","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=8","label":"8","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=9","label":"9","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=17","label":"17","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=18","label":"18","active":false},{"url":"https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq?page=2"
/// path : "https://abcdef.flech.tn/egybestant/public/api/networks/media/show/3626/p2lbgWkFrykA4QyUmpHihzmc5BNzIABq"
/// per_page : 12
/// prev_page_url : null
/// to : 12
/// total : 205

NetworkMedaApiResponse networkMedaApiResponseFromJson(String str) => NetworkMedaApiResponse.fromJson(json.decode(str));
String networkMedaApiResponseToJson(NetworkMedaApiResponse data) => json.encode(data.toJson());
class NetworkMedaApiResponse {
  NetworkMedaApiResponse({
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

  NetworkMedaApiResponse.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(MediaDetailsEntity.fromJson(v));
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
NetworkMedaApiResponse copyWith({  num? currentPage,
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
}) => NetworkMedaApiResponse(  currentPage: currentPage ?? _currentPage,
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