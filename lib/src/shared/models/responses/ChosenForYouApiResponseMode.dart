import 'dart:convert';

import 'package:happy_time_module/src/shared/models/responses/GenresResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/HomeContentResponseModel.dart';

/// choosed : [{"title":"A Fork in the Road 2010","id":17556,"poster_path":"https://image.tmdb.org/t/p/w500/yMFaFp4SswmBAN2HGBNLxryNWzc.jpg","vote_average":5.6,"subtitle":"HD","type":"movie","substype":0,"genres":[{"id":38251,"movie_id":17556,"genre_id":35,"created_at":"2023-12-22T12:44:13.000000Z","updated_at":"2023-12-22T12:44:13.000000Z","name":"كوميديا"},{"id":38252,"movie_id":17556,"genre_id":80,"created_at":"2023-12-22T12:44:13.000000Z","updated_at":"2023-12-22T12:44:13.000000Z","name":"جريمة"}]}]

ChosenForYouApiResponseMode chosenForYouApiResponseModeFromJson(String str) =>
    ChosenForYouApiResponseMode.fromJson(json.decode(str));

String chosenForYouApiResponseModeToJson(ChosenForYouApiResponseMode data) =>
    json.encode(data.toJson());

class ChosenForYouApiResponseMode {
  ChosenForYouApiResponseMode({
    List<Choosed>? choosed,
    List<Choosed>? recommended,
  }) {
    _choosed = choosed;
    _recommended = recommended;
  }

  ChosenForYouApiResponseMode.fromJson(dynamic json) {
    if (json['choosed'] != null) {
      _choosed = [];
      json['choosed'].forEach((v) {
        _choosed?.add(Choosed.fromJson(v));
      });
    }

    if (json['recommended'] != null) {
      _recommended = [];
      json['recommended'].forEach((v) {
        _recommended?.add(Choosed.fromJson(v));
      });
    }
  }

  List<Choosed>? _choosed;
  List<Choosed>? _recommended;

  ChosenForYouApiResponseMode copyWith({
    List<Choosed>? choosed,
  }) =>
      ChosenForYouApiResponseMode(
        choosed: choosed ?? _choosed,
      );

  List<Choosed>? get choosed => _choosed;

  List<Choosed>? get recommended => _recommended;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_choosed != null) {
      map['choosed'] = _choosed?.map((v) => v.toJson()).toList();
    }
    if (_recommended != null) {
      map['recommended'] = _recommended?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
