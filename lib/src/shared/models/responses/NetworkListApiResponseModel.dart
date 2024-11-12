import 'dart:convert';
/// networks : [{"id":6855,"name":"انمي","logo_path":"https://flech.tn/egybest/public/api/movies/image/igKcWK7d825f7KGyHdt06Q1IO73Ujs6tSKkeo72j.png"},{"id":213,"name":"Netflix","logo_path":"http://image.tmdb.org/t/p/w500/wwemzKWzjKYJFfCeiB57q3r4Bcm.png"},{"id":7014,"name":"مسلسلات تركية","logo_path":"https://flech.tn/egybest/public/api/movies/image/USSTmrxHYpadDbr4e6CjpRfscPwRnsGNat1M7vAo.png"},{"id":7007,"name":"مسلسلات عربية","logo_path":"https://flech.tn/egybest/public/api/movies/image/LxEAvPZw3QeUMVIfjaXs82PIoMMb3YyFH4YSbgEd.png"},{"id":7270,"name":"رمضان 2024","logo_path":"https://flech.tn/egybest/public/api/movies/image/xPKdTQ8dJ3lQCCscp0DOWqxYCn4RliOZnDtLFtw4.jpg"},{"id":6856,"name":"مسلسلات آسيوية","logo_path":"https://eegebest.com/egybest/public/api/movies/image/69rFI7PskBXIPQNOhrpMCyWgG1Pm1JclcpBXZLDX.png"},{"id":3626,"name":"Shahid","logo_path":"http://image.tmdb.org/t/p/w500/X37sqYsNaok8iZXzJpvFbNSJHe.png"},{"id":49,"name":"HBO","logo_path":"http://image.tmdb.org/t/p/w500/tuomPhY2UtuPTqqFnKMVHvSb724.png"},{"id":2739,"name":"Disney+","logo_path":"http://image.tmdb.org/t/p/w500/uzKjVDmQ1WRMvGBb7UNRE0wTn1H.png"},{"id":7748,"name":"Sphere Abacus","logo_path":null},{"id":7714,"name":"HBO Latino","logo_path":"https://image.tmdb.org/t/p/w500/wcw8OXAh2dNEgsyTlTs71Gh1uAk.png"}]

NetworkListApiResponseModel networkListApiResponseModelFromJson(String str) => NetworkListApiResponseModel.fromJson(json.decode(str));
String networkListApiResponseModelToJson(NetworkListApiResponseModel data) => json.encode(data.toJson());
class NetworkListApiResponseModel {
  NetworkListApiResponseModel({
      List<Networks>? networks,}){
    _networks = networks;
}

  NetworkListApiResponseModel.fromJson(dynamic json) {
    if (json['networks'] != null) {
      _networks = [];
      json['networks'].forEach((v) {
        _networks?.add(Networks.fromJson(v));
      });
    }
  }
  List<Networks>? _networks;
NetworkListApiResponseModel copyWith({  List<Networks>? networks,
}) => NetworkListApiResponseModel(  networks: networks ?? _networks,
);
  List<Networks>? get networks => _networks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_networks != null) {
      map['networks'] = _networks?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 6855
/// name : "انمي"
/// logo_path : "https://flech.tn/egybest/public/api/movies/image/igKcWK7d825f7KGyHdt06Q1IO73Ujs6tSKkeo72j.png"

Networks networksFromJson(String str) => Networks.fromJson(json.decode(str));
String networksToJson(Networks data) => json.encode(data.toJson());
class Networks {
  Networks({
      num? id, 
      String? name, 
      String? logoPath,}){
    _id = id;
    _name = name;
    _logoPath = logoPath;
}

  Networks.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _logoPath = json['logo_path'];
  }
  num? _id;
  String? _name;
  String? _logoPath;
Networks copyWith({  num? id,
  String? name,
  String? logoPath,
}) => Networks(  id: id ?? _id,
  name: name ?? _name,
  logoPath: logoPath ?? _logoPath,
);
  num? get id => _id;
  String? get name => _name;
  String? get logoPath => _logoPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['logo_path'] = _logoPath;
    return map;
  }

}