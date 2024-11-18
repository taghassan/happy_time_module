import 'dart:convert';
/// air_date.gte : ""
/// air_date.lte : "2025-05-18"
/// certification : ""
/// certification_country : "AE"
/// debug : ""
/// first_air_date.gte : ""
/// first_air_date.lte : ""
/// page : 5
/// primary_release_date.gte : ""
/// primary_release_date.lte : ""
/// region : "AE|XX"
/// release_date.gte : ""
/// release_date.lte : ""
/// show_me : "everything"
/// sort_by : "popularity.desc"
/// vote_average.gte : 0
/// vote_average.lte : 10
/// vote_count.gte : 0
/// watch_region : "AE"
/// with_genres : ""
/// with_keywords : ""
/// with_networks : ""
/// with_origin_country : ""
/// with_original_language : ""
/// with_watch_monetization_types : "flatrate|free|ads|rent|buy"
/// with_watch_providers : ""
/// with_release_type : ""
/// with_runtime.gte : 0
/// with_runtime.lte : 400

TvFiltersModel tvFiltersModelFromJson(String str) => TvFiltersModel.fromJson(json.decode(str));
String tvFiltersModelToJson(TvFiltersModel data) => json.encode(data.toJson());
class TvFiltersModel {
  TvFiltersModel({
      String? airDategte, 
      String? airDatelte, 
      String? certification, 
      String? certificationCountry, 
      String? debug, 
      String? firstAirDategte, 
      String? firstAirDatelte, 
      num? page, 
      String? primaryReleaseDategte, 
      String? primaryReleaseDatelte, 
      String? region, 
      String? releaseDategte, 
      String? releaseDatelte, 
      String? showMe, 
      String? sortBy, 
      num? voteAveragegte, 
      num? voteAveragelte, 
      num? voteCountgte, 
      String? watchRegion, 
      String? withGenres, 
      String? withKeywords, 
      String? withNetworks, 
      String? withOriginCountry, 
      String? withOriginalLanguage, 
      String? withWatchMonetizationTypes, 
      String? withWatchProviders, 
      String? withReleaseType, 
      num? withRuntimegte, 
      num? withRuntimelte,}){
    _airDategte = airDategte;
    _airDatelte = airDatelte;
    _certification = certification;
    _certificationCountry = certificationCountry;
    _debug = debug;
    _firstAirDategte = firstAirDategte;
    _firstAirDatelte = firstAirDatelte;
    _page = page;
    _primaryReleaseDategte = primaryReleaseDategte;
    _primaryReleaseDatelte = primaryReleaseDatelte;
    _region = region;
    _releaseDategte = releaseDategte;
    _releaseDatelte = releaseDatelte;
    _showMe = showMe;
    _sortBy = sortBy;
    _voteAveragegte = voteAveragegte;
    _voteAveragelte = voteAveragelte;
    _voteCountgte = voteCountgte;
    _watchRegion = watchRegion;
    _withGenres = withGenres;
    _withKeywords = withKeywords;
    _withNetworks = withNetworks;
    _withOriginCountry = withOriginCountry;
    _withOriginalLanguage = withOriginalLanguage;
    _withWatchMonetizationTypes = withWatchMonetizationTypes;
    _withWatchProviders = withWatchProviders;
    _withReleaseType = withReleaseType;
    _withRuntimegte = withRuntimegte;
    _withRuntimelte = withRuntimelte;
}

  TvFiltersModel.fromJson(dynamic json) {
    _airDategte = json['air_date.gte'];
    _airDatelte = json['air_date.lte'];
    _certification = json['certification'];
    _certificationCountry = json['certification_country'];
    _debug = json['debug'];
    _firstAirDategte = json['first_air_date.gte'];
    _firstAirDatelte = json['first_air_date.lte'];
    _page = json['page'];
    _primaryReleaseDategte = json['primary_release_date.gte'];
    _primaryReleaseDatelte = json['primary_release_date.lte'];
    _region = json['region'];
    _releaseDategte = json['release_date.gte'];
    _releaseDatelte = json['release_date.lte'];
    _showMe = json['show_me'];
    _sortBy = json['sort_by'];
    _voteAveragegte = json['vote_average.gte'];
    _voteAveragelte = json['vote_average.lte'];
    _voteCountgte = json['vote_count.gte'];
    _watchRegion = json['watch_region'];
    _withGenres = json['with_genres'];
    _withKeywords = json['with_keywords'];
    _withNetworks = json['with_networks'];
    _withOriginCountry = json['with_origin_country'];
    _withOriginalLanguage = json['with_original_language'];
    _withWatchMonetizationTypes = json['with_watch_monetization_types'];
    _withWatchProviders = json['with_watch_providers'];
    _withReleaseType = json['with_release_type'];
    _withRuntimegte = json['with_runtime.gte'];
    _withRuntimelte = json['with_runtime.lte'];
  }
  String? _airDategte;
  String? _airDatelte;
  String? _certification;
  String? _certificationCountry;
  String? _debug;
  String? _firstAirDategte;
  String? _firstAirDatelte;
  num? _page;
  String? _primaryReleaseDategte;
  String? _primaryReleaseDatelte;
  String? _region;
  String? _releaseDategte;
  String? _releaseDatelte;
  String? _showMe;
  String? _sortBy;
  num? _voteAveragegte;
  num? _voteAveragelte;
  num? _voteCountgte;
  String? _watchRegion;
  String? _withGenres;
  String? _withKeywords;
  String? _withNetworks;
  String? _withOriginCountry;
  String? _withOriginalLanguage;
  String? _withWatchMonetizationTypes;
  String? _withWatchProviders;
  String? _withReleaseType;
  num? _withRuntimegte;
  num? _withRuntimelte;

  String? get airDategte => _airDategte;
  String? get airDatelte => _airDatelte;
  String? get certification => _certification;
  String? get certificationCountry => _certificationCountry;
  String? get debug => _debug;
  String? get firstAirDategte => _firstAirDategte;
  String? get firstAirDatelte => _firstAirDatelte;
  num? get page => _page;
  String? get primaryReleaseDategte => _primaryReleaseDategte;
  String? get primaryReleaseDatelte => _primaryReleaseDatelte;
  String? get region => _region;
  String? get releaseDategte => _releaseDategte;
  String? get releaseDatelte => _releaseDatelte;
  String? get showMe => _showMe;
  String? get sortBy => _sortBy;
  num? get voteAveragegte => _voteAveragegte;
  num? get voteAveragelte => _voteAveragelte;
  num? get voteCountgte => _voteCountgte;
  String? get watchRegion => _watchRegion;
  String? get withGenres => _withGenres;
  String? get withKeywords => _withKeywords;
  String? get withNetworks => _withNetworks;
  String? get withOriginCountry => _withOriginCountry;
  String? get withOriginalLanguage => _withOriginalLanguage;
  String? get withWatchMonetizationTypes => _withWatchMonetizationTypes;
  String? get withWatchProviders => _withWatchProviders;
  String? get withReleaseType => _withReleaseType;
  num? get withRuntimegte => _withRuntimegte;
  num? get withRuntimelte => _withRuntimelte;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air_date.gte'] = _airDategte;
    map['air_date.lte'] = _airDatelte;
    map['certification'] = _certification;
    map['certification_country'] = _certificationCountry;
    map['debug'] = _debug;
    map['first_air_date.gte'] = _firstAirDategte;
    map['first_air_date.lte'] = _firstAirDatelte;
    map['page'] = _page;
    map['primary_release_date.gte'] = _primaryReleaseDategte;
    map['primary_release_date.lte'] = _primaryReleaseDatelte;
    map['region'] = _region;
    map['release_date.gte'] = _releaseDategte;
    map['release_date.lte'] = _releaseDatelte;
    map['show_me'] = _showMe;
    map['sort_by'] = _sortBy;
    map['vote_average.gte'] = _voteAveragegte;
    map['vote_average.lte'] = _voteAveragelte;
    map['vote_count.gte'] = _voteCountgte;
    map['watch_region'] = _watchRegion;
    map['with_genres'] = _withGenres;
    map['with_keywords'] = _withKeywords;
    map['with_networks'] = _withNetworks;
    map['with_origin_country'] = _withOriginCountry;
    map['with_original_language'] = _withOriginalLanguage;
    map['with_watch_monetization_types'] = _withWatchMonetizationTypes;
    map['with_watch_providers'] = _withWatchProviders;
    map['with_release_type'] = _withReleaseType;
    map['with_runtime.gte'] = _withRuntimegte;
    map['with_runtime.lte'] = _withRuntimelte;
    return map;
  }

}