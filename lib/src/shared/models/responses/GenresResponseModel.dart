import 'dart:convert';

/// id : 38251
/// movie_id : 17556
/// genre_id : 35
/// created_at : "2023-12-22T12:44:13.000000Z"
/// updated_at : "2023-12-22T12:44:13.000000Z"
/// name : "كوميديا"

Genres genresFromJson(String str) => Genres.fromJson(json.decode(str));
String genresToJson(Genres data) => json.encode(data.toJson());
class Genres {
  Genres({
    num? id,
    num? movieId,
    num? genreId,
    String? createdAt,
    String? updatedAt,
    String? name,}){
    _id = id;
    _movieId = movieId;
    _genreId = genreId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _name = name;
  }

  Genres.fromJson(dynamic json) {
    _id = json['id'];
    _movieId = json['movie_id'];
    _genreId = json['genre_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _name = json['name'];
  }
  num? _id;
  num? _movieId;
  num? _genreId;
  String? _createdAt;
  String? _updatedAt;
  String? _name;
  Genres copyWith({  num? id,
    num? movieId,
    num? genreId,
    String? createdAt,
    String? updatedAt,
    String? name,
  }) => Genres(  id: id ?? _id,
    movieId: movieId ?? _movieId,
    genreId: genreId ?? _genreId,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    name: name ?? _name,
  );
  num? get id => _id;
  num? get movieId => _movieId;
  num? get genreId => _genreId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['movie_id'] = _movieId;
    map['genre_id'] = _genreId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['name'] = _name;
    return map;
  }

}