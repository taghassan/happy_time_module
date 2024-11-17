import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class TheMovieDBHelper {
  final Dio _client =
      Dio(BaseOptions(baseUrl: "https://www.themoviedb.org", headers: {
    'User-Agent':
        'Mozilla/5.0 (Linux; Android 10; Pixel 4 XL Build/QP1A.191005.007) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36',
  }));



 Future<List<TheMovieDbSeasonResponse>> fetchSeasons({required String id}) async {

    List<TheMovieDbSeasonResponse> seasons = [];
    try {
      var response = await _client.get("/tv/$id/seasons");
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

  Future<List<TheMovieDbEpisodeResponse>> fetchEpisodeList({required String url})async{
    List<TheMovieDbEpisodeResponse> episodes = [];
    try {
      var response = await _client.get(url);
      var document = parser.parse(response.data);

      var episodeWrappers = document.querySelector('.episode_list')?.querySelectorAll('.card');
    
      //
      for (var episodeWrapper in episodeWrappers??[]) {
      Element? link=  episodeWrapper.querySelector('a');
      Element? image=  link?.querySelector('img');

        var seasonTitle = link?.attributes['title'];
        var season = link?.attributes['season'];
        var episode = link?.attributes['episode'];
        var imageUrl = image?.attributes['src'];
      episodes.add(TheMovieDbEpisodeResponse(
        name: seasonTitle?.trim(),
          season:season.toString(),
        episode:episode.toString(),
        image:imageUrl.toString(),


      ));
      }

      return episodes;
    } catch (e) {

      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }
}
