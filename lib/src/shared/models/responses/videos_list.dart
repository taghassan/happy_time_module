import 'dart:convert';

/// id : 171613
/// episode_id : 147490
/// server : "VIP Fast"
/// header : null
/// useragent : null
/// link : "https://www.fasoul.egyfasel/video_player?uid=0$vid=57c52d296ca4e7f4867f8a2a4f79ce22$img=https://img.scdns.io/thumb/57c52d296ca4e7f4867f8a2a4f79ce22/large.jpg"
/// lang : "Arabic"
/// video_name : ""
/// embed : 0
/// youtubelink : 0
/// hls : 0
/// supported_hosts : 1
/// drm : 0
/// drmuuid : null
/// drmlicenceuri : null
/// status : 1
/// created_at : "2022-07-22T13:38:24.000000Z"
/// updated_at : "2022-07-22T13:38:24.000000Z"

Videos videosFromJson(String str) => Videos.fromJson(json.decode(str));
String videosToJson(Videos data) => json.encode(data.toJson());
class Videos {
  Videos({
    num? id,
    num? episodeId,
    String? server,
    dynamic header,
    dynamic useragent,
    String? link,
    String? lang,
    String? videoName,
    num? embed,
    num? youtubelink,
    num? hls,
    num? supportedHosts,
    num? drm,
    dynamic drmuuid,
    dynamic drmlicenceuri,
    num? status,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _episodeId = episodeId;
    _server = server;
    _header = header;
    _useragent = useragent;
    _link = link;
    _lang = lang;
    _videoName = videoName;
    _embed = embed;
    _youtubelink = youtubelink;
    _hls = hls;
    _supportedHosts = supportedHosts;
    _drm = drm;
    _drmuuid = drmuuid;
    _drmlicenceuri = drmlicenceuri;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Videos.fromJson(dynamic json) {
    _id = json['id'];
    _episodeId = json['episode_id'];
    _server = json['server'];
    _header = json['header'];
    _useragent = json['useragent'];
    _link = json['link'];
    _lang = json['lang'];
    _videoName = json['video_name'];
    _embed = json['embed'];
    _youtubelink = json['youtubelink'];
    _hls = json['hls'];
    _supportedHosts = json['supported_hosts'];
    _drm = json['drm'];
    _drmuuid = json['drmuuid'];
    _drmlicenceuri = json['drmlicenceuri'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _episodeId;
  String? _server;
  dynamic _header;
  dynamic _useragent;
  String? _link;
  String? _lang;
  String? _videoName;
  num? _embed;
  num? _youtubelink;
  num? _hls;
  num? _supportedHosts;
  num? _drm;
  dynamic _drmuuid;
  dynamic _drmlicenceuri;
  num? _status;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get episodeId => _episodeId;
  String? get server => _server;
  dynamic get header => _header;
  dynamic get useragent => _useragent;
  String? get link => _link;
  String? get lang => _lang;
  String? get videoName => _videoName;
  num? get embed => _embed;
  num? get youtubelink => _youtubelink;
  num? get hls => _hls;
  num? get supportedHosts => _supportedHosts;
  num? get drm => _drm;
  dynamic get drmuuid => _drmuuid;
  dynamic get drmlicenceuri => _drmlicenceuri;
  num? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['episode_id'] = _episodeId;
    map['server'] = _server;
    map['header'] = _header;
    map['useragent'] = _useragent;
    map['link'] = _link;
    map['lang'] = _lang;
    map['video_name'] = _videoName;
    map['embed'] = _embed;
    map['youtubelink'] = _youtubelink;
    map['hls'] = _hls;
    map['supported_hosts'] = _supportedHosts;
    map['drm'] = _drm;
    map['drmuuid'] = _drmuuid;
    map['drmlicenceuri'] = _drmlicenceuri;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
