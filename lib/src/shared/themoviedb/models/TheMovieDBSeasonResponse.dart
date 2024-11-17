import 'dart:convert';
/// name : ""
/// image : ""
/// url_path : ""

TheMovieDbSeasonResponse theMovieDbSeasonResponseFromJson(String str) => TheMovieDbSeasonResponse.fromJson(json.decode(str));
String theMovieDbSeasonResponseToJson(TheMovieDbSeasonResponse data) => json.encode(data.toJson());
class TheMovieDbSeasonResponse {
  TheMovieDbSeasonResponse({
      String? name, 
      String? image, 
      String? urlPath,}){
    _name = name;
    _image = image;
    _urlPath = urlPath;
}

  TheMovieDbSeasonResponse.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _urlPath = json['url_path'];
  }
  String? _name;
  String? _image;
  String? _urlPath;

  String? get name => _name;
  String? get image => _image;
  String? get urlPath => _urlPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['url_path'] = _urlPath;
    return map;
  }

}