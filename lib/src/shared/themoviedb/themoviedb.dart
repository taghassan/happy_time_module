import 'package:dio/dio.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiTvShowDetailsResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/SerssionApiResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TVSeasonsDetailsResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/the_movie_db_mixin.dart';
import 'package:html/parser.dart' as parser;

class TheMovieDBHelper {

  TheMovieDBHelper(){
    createGuestSession().then((value) {
      sessionApiResponse=value;
    },);
  }

  final Dio _client =
      Dio(BaseOptions(baseUrl: "https://www.themoviedb.org", headers: {
    'User-Agent':
        'Mozilla/5.0 (Linux; Android 10; Pixel 4 XL Build/QP1A.191005.007) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36',
  }));
  String apiKey = "2f3cb5763db1117fcba3948632f8aad9";//
  //backup key = "478ba82cea8c6c64d1e999b0f2bea90e" oops! Invalid API key: You must be granted a valid key.
  var headers = {
    'accept': 'text/html, */*; q=0.01',
    'accept-language':
        'ar-SD,ar;q=0.9,en-GB;q=0.8,en;q=0.7,en-US;q=0.6,zh-CN;q=0.5,zh;q=0.4',
    'content-type': 'application/x-www-form-urlencoded; charset=UTF-8',
  };

  SessionApiResponse? sessionApiResponse;

  Future<ApiTvShowDetailsResponse> fetchSeasons(
      {required String tvShowPath}) async {


    var response = await _client.get(
        tvShowPath,
        queryParameters: {
          "api_key": apiKey
        });

    return ApiTvShowDetailsResponse.fromJson(response.data);

    // addPrettyDioLogger(_client);
    // List<TheMovieDbSeasonResponse> seasons = [];
    try {
      /*
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

       */
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<TvSeasonsDetailsResponse> fetchEpisodeList(
      {required String url}) async {
    // addPrettyDioLogger(_client);
    try {

      var response = await _client.get(
          url,
          queryParameters: {
            "api_key": apiKey
          });
      return TvSeasonsDetailsResponse.fromJson(response.data);
   /*
    List<TheMovieDbEpisodeResponse> episodes = [];

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
        var season = linkSeason.toString() == '0'
            ? int.tryParse(linkSeason.toString()) != null
                ? "${int.parse(linkSeason.toString()) + 1}"
                : '1'
            : linkSeason.toString();
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

    */
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<ApiDiscoverTvResponse> fetchTvApiItems(
      {String? page, String? watchProviders}) async {
    try {
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
        "with_watch_providers": watchProviders??'',
        "with_release_type": "",
        "with_runtime.gte": 0,
        "with_runtime.lte": 400,
        "api_key": apiKey
      };

      var data =
          '''air_date.gte=&air_date.lte=&certification=&certification_country=AE&debug=&first_air_date.gte=&first_air_date.lte=&page=$page&primary_release_date.gte=&primary_release_date.lte=&region=AE%7CXX&release_date.gte=&release_date.lte=&show_me=everything&sort_by=popularity.desc&vote_average.gte=0&vote_average.lte=10&vote_count.gte=0&watch_region=AE&with_genres=&with_keywords=&with_networks=&with_origin_country=&with_original_language=&with_watch_monetization_types=flatrate%7Cfree%7Cads%7Crent%7Cbuy&with_watch_providers=${watchProviders ?? ''}&with_release_type=&with_runtime.gte=0&with_runtime.lte=400''';

      var response = await _client.get(
          'https://api.themoviedb.org/3/discover/tv',
          queryParameters: queryParams);

      return ApiDiscoverTvResponse.fromJson(response.data,showType: ApiShowTypes.tv);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<ApiDiscoverTvResponse> fetchMoviesApiItems(
      {String? page, String? watchProviders}) async {
    try {
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
        "with_watch_providers": watchProviders??'',
        "with_release_type": "",
        "with_runtime.gte": 0,
        "with_runtime.lte": 400,
        "api_key": apiKey
      };

      var data =
          '''air_date.gte=&air_date.lte=&certification=&certification_country=AE&debug=&first_air_date.gte=&first_air_date.lte=&page=$page&primary_release_date.gte=&primary_release_date.lte=&region=AE%7CXX&release_date.gte=&release_date.lte=&show_me=everything&sort_by=popularity.desc&vote_average.gte=0&vote_average.lte=10&vote_count.gte=0&watch_region=AE&with_genres=&with_keywords=&with_networks=&with_origin_country=&with_original_language=&with_watch_monetization_types=flatrate%7Cfree%7Cads%7Crent%7Cbuy&with_watch_providers=${watchProviders ?? ''}&with_release_type=&with_runtime.gte=0&with_runtime.lte=400''';

      var response = await _client.get(
          'https://api.themoviedb.org/3/discover/movie',
          queryParameters: queryParams);

      return ApiDiscoverTvResponse.fromJson(response.data,
          showType: ApiShowTypes.movie);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDBShowResponse>> fetchTvItems(
      {String? page, String? watchProviders}) async {
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
        "with_watch_providers": watchProviders??'',
        "with_release_type": "",
        "with_runtime.gte": 0,
        "with_runtime.lte": 400
      };

      var data =
          '''air_date.gte=&air_date.lte=&certification=&certification_country=AE&debug=&first_air_date.gte=&first_air_date.lte=&page=$page&primary_release_date.gte=&primary_release_date.lte=&region=AE%7CXX&release_date.gte=&release_date.lte=&show_me=everything&sort_by=popularity.desc&vote_average.gte=0&vote_average.lte=10&vote_count.gte=0&watch_region=AE&with_genres=&with_keywords=&with_networks=&with_origin_country=&with_original_language=&with_watch_monetization_types=flatrate%7Cfree%7Cads%7Crent%7Cbuy&with_watch_providers=${watchProviders ?? ''}&with_release_type=&with_runtime.gte=0&with_runtime.lte=400''';

      var response = await _client.request(
        '/discover/tv/items',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      return parseResponse(response);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDBShowResponse>> fetchMovies(
      {required int page, String? watchProviders}) async {
    try {
      List<TheMovieDBShowResponse> tvShows = [];

      var data =
          '''air_date.gte=&air_date.lte=&certification=&certification_country=AE&debug=&first_air_date.gte=&first_air_date.lte=&page=$page&primary_release_date.gte=&primary_release_date.lte=&region=&release_date.gte=&release_date.lte=2025-05-21&show_me=everything&sort_by=popularity.desc&vote_average.gte=0&vote_average.lte=10&vote_count.gte=0&watch_region=AE&with_genres=&with_keywords=&with_networks=&with_origin_country=&with_original_language=&with_watch_monetization_types=&with_watch_providers=${watchProviders ?? ''}&with_release_type=&with_runtime.gte=0&with_runtime.lte=400''';

      var response = await _client.request(
        '/discover/movie/items',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      return parseResponse(response);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<ApiDiscoverTvResponse> searchApi({
    String? query,
  }) async {
    try {
      //

      var response = await _client
          .get('https://api.themoviedb.org/3/search/multi', queryParameters: {
        "query": query?.replaceAll(" ", "+"),
        "api_key": apiKey
      });

      return ApiDiscoverTvResponse.fromJson(response.data);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<SessionApiResponse> createGuestSession() async {
    try {
      var dio = Dio();
      var response = await dio.get(
          "https://api.themoviedb.org/3/authentication/guest_session/new?api_key=$apiKey");

      return SessionApiResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<ApiDiscoverTvResponse> queryPanelApi(
      {required TheMovieDBPanelEnum panel, required String group}) async {


    String url = "https://api.themoviedb.org/3";
    String path ="/trending/all/week";

    ApiShowTypes apiShowTypes= ApiShowTypes.tv;

    switch(panel){

      case TheMovieDBPanelEnum.free_scroller:
        path = "/tv/top_rated";
        apiShowTypes=  ApiShowTypes.tv;
      case TheMovieDBPanelEnum.trending_scroller:
        path = "/trending/all/week";
      case TheMovieDBPanelEnum.popular_scroller:
        apiShowTypes=  ApiShowTypes.tv;
        path = "/tv/popular";
    }

    try {
      var response =
          await _client.get("$url$path", queryParameters: {"api_key": apiKey},options: Options(
            headers: {
              'Authorization':'Bearer ${sessionApiResponse?.guestSessionId}'
            }
          ));

      return ApiDiscoverTvResponse.fromJson(response.data,showType: apiShowTypes);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDBShowResponse>> search({
    String? query,
  }) async {
    try {
      var response = await _client.request(
        '/search?query=${query?.replaceAll(" ", "+")}',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      return parseResponse(response);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  Future<List<TheMovieDBShowResponse>> queryPanel(
      {required String panel, required String group}) async {
    try {
      var response = await _client.request(
        '/remote/panel?panel=$panel&group=$group',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      return parseResponse(response);
    } catch (e) {
      AppLogger.it.logError(e.toString());
      rethrow;
    }
  }

  List<TheMovieDBShowResponse> parseResponse(Response response) {
    List<TheMovieDBShowResponse> tvShows = [];

    try {
      var document = parser.parse(response.data);

      var showCards = document.querySelectorAll('.card');
      for (var showCard in showCards) {
        var name = "${showCard.querySelector('h2')?.text}".trim();
        var urlPath =
            "${showCard.querySelector('.wrapper')?.querySelector('a')?.attributes['href']}";
        var image =
            "${showCard.querySelector('.wrapper')?.querySelector('.image')?.querySelector('img')?.attributes['src']}";

        AppLogger.it.logInfo("name $name");
        AppLogger.it.logInfo("urlPath $urlPath");
        AppLogger.it.logInfo("image $image");
        tvShows.add(TheMovieDBShowResponse(
            name: name,
            image: image,
            urlPath: urlPath,
            showType: urlPath.contains("movie")
                ? ShowTypes.movie
                : urlPath.contains("collection")
                    ? ShowTypes.collection
                    : ShowTypes.tv));
      }
      return tvShows;
    } catch (e) {
      rethrow;
    }
  }
}
