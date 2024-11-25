import 'dart:convert';

import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
/// anime : [{"id":532,"name":"المفقود مدبلج","poster_path":"https://flech.tn/egybestant/public/api/animes/image/p5qKKAYwGw1ZdCmMSzNBFkvQDuTrhEYVPppkG7lL.jpg","vote_average":null,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":[],"genres":[],"networks":[{"id":1020,"anime_id":532,"network_id":7014,"created_at":"2024-11-11T18:56:27.000000Z","updated_at":"2024-11-11T18:56:27.000000Z","name":"مسلسلات تركية"}]},{"id":531,"name":"الغرفه 309 مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/jYOcAeNQgSj7gff73Lmc2Pdd1QU.jpg","vote_average":6.1,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","كوميديا"],"genres":[{"id":860,"anime_id":531,"genre_id":18,"created_at":"2024-11-10T14:15:52.000000Z","updated_at":"2024-11-10T14:15:52.000000Z","name":"دراما"},{"id":861,"anime_id":531,"genre_id":35,"created_at":"2024-11-10T14:15:52.000000Z","updated_at":"2024-11-10T14:15:52.000000Z","name":"كوميديا"}],"networks":[{"id":1018,"anime_id":531,"network_id":303,"created_at":"2024-11-10T14:15:52.000000Z","updated_at":"2024-11-10T14:15:52.000000Z","name":"FOX"},{"id":1019,"anime_id":531,"network_id":7014,"created_at":"2024-11-10T15:16:17.000000Z","updated_at":"2024-11-10T15:16:17.000000Z","name":"مسلسلات تركية"}]},{"id":530,"name":"العشق عناداً مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/gnsNXjv4GLpuTaWsr0Rpp2xF0VO.jpg","vote_average":7,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["كوميديا"],"genres":[{"id":859,"anime_id":530,"genre_id":35,"created_at":"2024-11-07T21:44:21.000000Z","updated_at":"2024-11-07T21:44:21.000000Z","name":"كوميديا"}],"networks":[{"id":1016,"anime_id":530,"network_id":303,"created_at":"2024-11-07T21:44:21.000000Z","updated_at":"2024-11-07T21:44:21.000000Z","name":"FOX"},{"id":1017,"anime_id":530,"network_id":7014,"created_at":"2024-11-07T22:45:12.000000Z","updated_at":"2024-11-07T22:45:12.000000Z","name":"مسلسلات تركية"}]},{"id":529,"name":"ابتسم لقدرك مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/5vUHQH4vxppo4pwC2GrrZujZQe7.jpg","vote_average":8,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["عائلي","دراما"],"genres":[{"id":857,"anime_id":529,"genre_id":10751,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"عائلي"},{"id":858,"anime_id":529,"genre_id":18,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"دراما"}],"networks":[{"id":1014,"anime_id":529,"network_id":303,"created_at":"2024-11-06T17:58:42.000000Z","updated_at":"2024-11-06T17:58:42.000000Z","name":"FOX"},{"id":1015,"anime_id":529,"network_id":7014,"created_at":"2024-11-06T18:59:04.000000Z","updated_at":"2024-11-06T18:59:04.000000Z","name":"مسلسلات تركية"}]},{"id":528,"name":"الفراشات الزرقاء مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/m5IOx0C8KxgHneCh6uRttzZYLRo.jpg","vote_average":8,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","حرب وسياسة","عائلي"],"genres":[{"id":854,"anime_id":528,"genre_id":18,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"دراما"},{"id":855,"anime_id":528,"genre_id":10768,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"حرب وسياسة"},{"id":856,"anime_id":528,"genre_id":10751,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"عائلي"}],"networks":[{"id":1012,"anime_id":528,"network_id":869,"created_at":"2024-11-06T09:31:05.000000Z","updated_at":"2024-11-06T09:31:05.000000Z","name":"TRT 1"},{"id":1013,"anime_id":528,"network_id":7014,"created_at":"2024-11-06T10:31:19.000000Z","updated_at":"2024-11-06T10:31:19.000000Z","name":"مسلسلات تركية"}]},{"id":527,"name":"حكاية خيالية مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/wpQSzP2BimpwKZAxoQcQ8nkby2J.jpg","vote_average":7.6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما"],"genres":[{"id":853,"anime_id":527,"genre_id":18,"created_at":"2024-11-04T21:13:28.000000Z","updated_at":"2024-11-04T21:13:28.000000Z","name":"دراما"}],"networks":[{"id":1010,"anime_id":527,"network_id":303,"created_at":"2024-11-04T21:13:28.000000Z","updated_at":"2024-11-04T21:13:28.000000Z","name":"FOX"},{"id":1011,"anime_id":527,"network_id":7014,"created_at":"2024-11-04T22:13:41.000000Z","updated_at":"2024-11-04T22:13:41.000000Z","name":"مسلسلات تركية"}]},{"id":526,"name":"المحارب مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/b2IvcQrcq3he4zpGcn3VFipwQDv.jpg","vote_average":9,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["حرب وسياسة"],"genres":[{"id":852,"anime_id":526,"genre_id":10768,"created_at":"2024-11-04T16:03:19.000000Z","updated_at":"2024-11-04T16:03:19.000000Z","name":"حرب وسياسة"}],"networks":[{"id":1008,"anime_id":526,"network_id":303,"created_at":"2024-11-04T16:03:19.000000Z","updated_at":"2024-11-04T16:03:19.000000Z","name":"FOX"},{"id":1009,"anime_id":526,"network_id":7014,"created_at":"2024-11-04T17:03:50.000000Z","updated_at":"2024-11-04T17:03:50.000000Z","name":"مسلسلات تركية"}]},{"id":525,"name":"الماضي العزيز مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/Jwnsl1IH0G9D1GF1GK539hOvhn.jpg","vote_average":7.4,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما"],"genres":[{"id":851,"anime_id":525,"genre_id":18,"created_at":"2024-10-30T17:13:52.000000Z","updated_at":"2024-10-30T17:13:52.000000Z","name":"دراما"}],"networks":[{"id":1006,"anime_id":525,"network_id":778,"created_at":"2024-10-30T17:13:52.000000Z","updated_at":"2024-10-30T17:13:52.000000Z","name":"Star TV"},{"id":1007,"anime_id":525,"network_id":7014,"created_at":"2024-10-30T18:14:08.000000Z","updated_at":"2024-10-30T18:14:08.000000Z","name":"مسلسلات تركية"}]},{"id":524,"name":"اثير الحب مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/4UgrTvOg4boz4UxyWYWXSVkqtHf.jpg","vote_average":6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["دراما","أوبرا صابونية"],"genres":[{"id":849,"anime_id":524,"genre_id":18,"created_at":"2024-10-30T17:07:39.000000Z","updated_at":"2024-10-30T17:07:39.000000Z","name":"دراما"},{"id":850,"anime_id":524,"genre_id":10766,"created_at":"2024-10-30T17:07:39.000000Z","updated_at":"2024-10-30T17:07:39.000000Z","name":"أوبرا صابونية"}],"networks":[{"id":1004,"anime_id":524,"network_id":303,"created_at":"2024-10-30T17:07:39.000000Z","updated_at":"2024-10-30T17:07:39.000000Z","name":"FOX"},{"id":1005,"anime_id":524,"network_id":7014,"created_at":"2024-10-30T18:08:01.000000Z","updated_at":"2024-10-30T18:08:01.000000Z","name":"مسلسلات تركية"}]},{"id":521,"name":"القسمة مدبلج","poster_path":"https://image.tmdb.org/t/p/w500/v5m3PpCzIwD4gYRInzHBSej3xxc.jpg","vote_average":6,"is_anime":1,"newEpisodes":0,"subtitle":"مدبلج","genreslist":["كوميديا","دراما"],"genres":[{"id":843,"anime_id":521,"genre_id":35,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"كوميديا"},{"id":844,"anime_id":521,"genre_id":18,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"دراما"}],"networks":[{"id":998,"anime_id":521,"network_id":303,"created_at":"2024-10-28T02:09:34.000000Z","updated_at":"2024-10-28T02:09:34.000000Z","name":"FOX"},{"id":999,"anime_id":521,"network_id":7014,"created_at":"2024-10-28T02:10:38.000000Z","updated_at":"2024-10-28T02:10:38.000000Z","name":"مسلسلات تركية"},{"id":1000,"anime_id":521,"network_id":6928,"created_at":"2024-10-28T02:10:38.000000Z","updated_at":"2024-10-28T02:10:38.000000Z","name":"تركيا"}]}]

AnimesRecentsApiResponseModel animesRecentsApiResponseModelFromJson(String str) => AnimesRecentsApiResponseModel.fromJson(json.decode(str));
String animesRecentsApiResponseModelToJson(AnimesRecentsApiResponseModel data) => json.encode(data.toJson());
class AnimesRecentsApiResponseModel {
  AnimesRecentsApiResponseModel({
      List<MediaDetailsEntity>? anime,}){
    _anime = anime;
}

  AnimesRecentsApiResponseModel.fromJson(dynamic json) {
    if (json['anime'] != null) {
      _anime = [];
      json['anime'].forEach((v) {
        _anime?.add(MediaDetailsEntity.fromJson(v));
      });
    }
  }
  List<MediaDetailsEntity>? _anime;
AnimesRecentsApiResponseModel copyWith({  List<MediaDetailsEntity>? anime,
}) => AnimesRecentsApiResponseModel(  anime: anime ?? _anime,
);
  List<MediaDetailsEntity>? get anime => _anime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_anime != null) {
      map['anime'] = _anime?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// id : 1020
/// anime_id : 532
/// network_id : 7014
/// created_at : "2024-11-11T18:56:27.000000Z"
/// updated_at : "2024-11-11T18:56:27.000000Z"
/// name : "مسلسلات تركية"

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