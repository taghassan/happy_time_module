import 'dart:convert';

/// name : ""
/// image : ""
/// url_path : ""
enum ShowTypes { movie, tv ,collection }

TheMovieDBShowResponse theMovieDbShowResponseFromJson(String str) =>
    TheMovieDBShowResponse.fromJson(json.decode(str));

String theMovieDbShowResponseToJson(TheMovieDBShowResponse data) =>
    json.encode(data.toJson());

class TheMovieDBShowResponse {
  TheMovieDBShowResponse({
    String? name,
    String? image,
    String? urlPath,
    ShowTypes? showType,
  }) {
    _name = name;
    _image = image;
    _urlPath = urlPath;
    _showType = showType;
  }

  TheMovieDBShowResponse.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _urlPath = json['url_path'];
  }

  String? _name;
  String? _image;
  String? _urlPath;
  ShowTypes? _showType;

  String? get name => _name;

  String? get image => _image;

  String? get urlPath => _urlPath;

  String? get theMovieDBId =>
      _urlPath?.split('/').last ??
      ''; //.toString().split('-').first.toString()??'';
  ShowTypes? get showType => _showType?? (theMovieDBId?.contains("movie")==true? ShowTypes.movie :theMovieDBId?.contains("collection")==true? ShowTypes.collection:  ShowTypes.tv);

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['url_path'] = _urlPath;
    return map;
  }
}
