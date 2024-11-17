import 'dart:convert';

/// id : 3626
/// name : "Shahid"
/// logo_path : "http://image.tmdb.org/t/p/w500/X37sqYsNaok8iZXzJpvFbNSJHe.png"
/// origin_country : "AE"
/// created_at : "2026-01-01T14:34:12.000000Z"
/// updated_at : "2024-03-10T07:01:56.000000Z"

Networkslist networkslistFromJson(String str) => Networkslist.fromJson(json.decode(str));
String networkslistToJson(Networkslist data) => json.encode(data.toJson());
class Networkslist {
  Networkslist({
    num? id,
    String? name,
    String? logoPath,
    String? originCountry,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _name = name;
    _logoPath = logoPath;
    _originCountry = originCountry;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Networkslist.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _logoPath = json['logo_path'];
    _originCountry = json['origin_country'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _logoPath;
  String? _originCountry;
  String? _createdAt;
  String? _updatedAt;
  Networkslist copyWith({  num? id,
    String? name,
    String? logoPath,
    String? originCountry,
    String? createdAt,
    String? updatedAt,
  }) => Networkslist(  id: id ?? _id,
    name: name ?? _name,
    logoPath: logoPath ?? _logoPath,
    originCountry: originCountry ?? _originCountry,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
  );
  num? get id => _id;
  String? get name => _name;
  String? get logoPath => _logoPath;
  String? get originCountry => _originCountry;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['logo_path'] = _logoPath;
    map['origin_country'] = _originCountry;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

