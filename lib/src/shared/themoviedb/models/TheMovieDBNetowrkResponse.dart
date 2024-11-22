import 'dart:convert';
/// id : 283
/// name : "Crunchyroll"
/// logo : "https://media.themoviedb.org/t/p/original/mXeC4TrcgdU6ltE9bCBCEORwSQR.jpg"

TheMovieDbNetWorksResponse theMovieDbNetowrkResponseFromJson(String str) => TheMovieDbNetWorksResponse.fromJson(json.decode(str));
String theMovieDbNetowrkResponseToJson(TheMovieDbNetWorksResponse data) => json.encode(data.toJson());
class TheMovieDbNetWorksResponse {
  TheMovieDbNetWorksResponse({
      num? id, 
      String? name, 
      String? logo,}){
    _id = id;
    _name = name;
    _logo = logo;
}

  TheMovieDbNetWorksResponse.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _logo = json['logo'];
  }
  num? _id;
  String? _name;
  String? _logo;

  num? get id => _id;
  String? get name => _name;
  String? get logo => _logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['logo'] = _logo;
    return map;
  }

}