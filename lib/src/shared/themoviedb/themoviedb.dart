import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:happy_time_module/dio_logger.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class TheMovieDBHelper {
  final Dio _client =
      Dio(BaseOptions(baseUrl: "https://www.themoviedb.org", headers: {
    'User-Agent':
        'Mozilla/5.0 (Linux; Android 10; Pixel 4 XL Build/QP1A.191005.007) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36',
  }));

  Future<List<TheMovieDbSeasonResponse>> fetchSeasons(
      {required String tvShowPath}) async {
    // addPrettyDioLogger(_client);
    List<TheMovieDbSeasonResponse> seasons = [];
    try {
      var response = await _client.get("$tvShowPath/seasons");
      var document = parser.parse(response.data);

      var seasonWrappers = document.querySelectorAll('.season_wrapper');

      for (var seasonWrapper in seasonWrappers) {
        var seasonTitle = seasonWrapper.querySelector('.season_overview');
        var seasonWrapperLink = seasonWrapper.querySelector('a');
        var seasonWrapperImage = seasonWrapperLink?.querySelector('img');

        seasons.add(TheMovieDbSeasonResponse(
            name: "${seasonTitle?.text.trim()}",
            urlPath: "${seasonWrapperLink?.attributes['href']}",
            image: "${seasonWrapperImage?.attributes['src']}"));
      }

      return seasons;
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDbEpisodeResponse>> fetchEpisodeList(
      {required String url}) async {
    // addPrettyDioLogger(_client);
    List<TheMovieDbEpisodeResponse> episodes = [];
    try {
      var response = await _client.get(url);
      var document = parser.parse(response.data);

      var episodeWrappers =
          document.querySelector('.episode_list')?.querySelectorAll('.card');

      //
      for (var episodeWrapper in episodeWrappers ?? []) {
        Element? link = episodeWrapper.querySelector('a');
        Element? image = link?.querySelector('img');

        var linkSeason = link?.attributes['season'];

        var seasonTitle = link?.attributes['title'];
        var season = linkSeason.toString()=='0'? int.tryParse(linkSeason.toString()) != null
            ? "${int.parse(linkSeason.toString()) + 1}"
            : '1':linkSeason.toString();
        var episode = link?.attributes['episode'];
        var imageUrl = image?.attributes['src'];
        episodes.add(TheMovieDbEpisodeResponse(
          name: seasonTitle?.trim(),
          season: season.toString(),
          episode: episode.toString(),
          image: imageUrl.toString(),
        ));
      }

      return episodes;
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDBShowResponse>> fetchTvItems({String? page}) async {
    try {
      // addPrettyDioLogger(_client);

      List<TheMovieDBShowResponse> tvShows = [];

      final Map<String, dynamic> queryParams = {
        "air_date.gte": "",
        "air_date.lte": "2025-05-18",
        "certification": "",
        "certification_country": "AE",
        "debug": "",
        "first_air_date.gte": "",
        "first_air_date.lte": "",
        "page": page,
        "primary_release_date.gte": "",
        "primary_release_date.lte": "",
        "region": "AE|XX",
        "release_date.gte": "",
        "release_date.lte": "",
        "show_me": "everything",
        "sort_by": "popularity.desc",
        "vote_average.gte": 0,
        "vote_average.lte": 10,
        "vote_count.gte": 0,
        "watch_region": "AE",
        "with_genres": "",
        "with_keywords": "",
        "with_networks": "",
        "with_origin_country": "",
        "with_original_language": "",
        "with_watch_monetization_types": "flatrate|free|ads|rent|buy",
        "with_watch_providers": "",
        "with_release_type": "",
        "with_runtime.gte": 0,
        "with_runtime.lte": 400
      };



      var headers = {
        'accept': 'text/html, */*; q=0.01',
        'accept-language': 'ar-SD,ar;q=0.9,en-GB;q=0.8,en;q=0.7,en-US;q=0.6,zh-CN;q=0.5,zh;q=0.4',
        'content-type': 'application/x-www-form-urlencoded; charset=UTF-8',

      };

      var data = '''air_date.gte=&air_date.lte=2025-05-18&certification=&certification_country=AE&debug=&first_air_date.gte=&first_air_date.lte=&page=$page&primary_release_date.gte=&primary_release_date.lte=&region=AE%7CXX&release_date.gte=&release_date.lte=&show_me=everything&sort_by=popularity.desc&vote_average.gte=0&vote_average.lte=10&vote_count.gte=0&watch_region=AE&with_genres=&with_keywords=&with_networks=&with_origin_country=&with_original_language=&with_watch_monetization_types=flatrate%7Cfree%7Cads%7Crent%7Cbuy&with_watch_providers=&with_release_type=&with_runtime.gte=0&with_runtime.lte=400''';

      var response = await _client.request(
        '/discover/tv/items',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      var document = parser.parse(response.data);

      var showCards = document.querySelectorAll('.card');
      for (var showCard in showCards) {
        var name = "${showCard.querySelector('h2')?.text}".trim();
        var urlPath =
            "${showCard.querySelector('.wrapper')?.querySelector('a')?.attributes['href']}";
        var image =
            "${showCard.querySelector('.wrapper')?.querySelector('.image')?.querySelector('img')?.attributes['src']}";

        tvShows.add(
            TheMovieDBShowResponse(name: name, image: image, urlPath: urlPath));
      }

      return tvShows;
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }
}
