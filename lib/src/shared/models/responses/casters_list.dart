import 'dart:convert';

/// id : 301
/// name : "Mohamed Ramadan"
/// original_name : "Mohamed Ramadan"
/// profile_path : "http://image.tmdb.org/t/p/w500//kbGkIR3pGj7bLlYko1AOKzLrjRI.jpg"

Casterslist casterslistFromJson(String str) => Casterslist.fromJson(json.decode(str));
String casterslistToJson(Casterslist data) => json.encode(data.toJson());
class Casterslist {
  Casterslist({
    num? id,
    String? name,
    String? originalName,
    String? profilePath,}){
    _id = id;
    _name = name;
    _originalName = originalName;
    _profilePath = profilePath;
  }

  Casterslist.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _originalName = json['original_name'];
    _profilePath = json['profile_path'];
  }
  num? _id;
  String? _name;
  String? _originalName;
  String? _profilePath;
  Casterslist copyWith({  num? id,
    String? name,
    String? originalName,
    String? profilePath,
  }) => Casterslist(  id: id ?? _id,
    name: name ?? _name,
    originalName: originalName ?? _originalName,
    profilePath: profilePath ?? _profilePath,
  );
  num? get id => _id;
  String? get name => _name;
  String? get originalName => _originalName;
  String? get profilePath => _profilePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['profile_path'] = _profilePath;
    return map;
  }

}