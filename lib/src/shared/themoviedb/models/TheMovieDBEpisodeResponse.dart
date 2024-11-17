import 'dart:convert';
/// name : ""
/// image : ""
/// url_path : ""
/// season : ""
/// episode : ""

TheMovieDbEpisodeResponse theMovieDbEpisodeResponseFromJson(String str) => TheMovieDbEpisodeResponse.fromJson(json.decode(str));
String theMovieDbEpisodeResponseToJson(TheMovieDbEpisodeResponse data) => json.encode(data.toJson());
class TheMovieDbEpisodeResponse {
  TheMovieDbEpisodeResponse({
      String? name, 
      String? image, 
      String? urlPath, 
      String? season, 
      String? episode,}){
    _name = name;
    _image = image;
    _urlPath = urlPath;
    _season = season;
    _episode = episode;
}

  TheMovieDbEpisodeResponse.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _urlPath = json['url_path'];
    _season = json['season'];
    _episode = json['episode'];
  }
  String? _name;
  String? _image;
  String? _urlPath;
  String? _season;
  String? _episode;

  String? get name => _name;
  String? get image => _image;
  String? get urlPath => _urlPath;
  String? get season => _season;
  String? get episode => _episode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['url_path'] = _urlPath;
    map['season'] = _season;
    map['episode'] = _episode;
    return map;
  }

}