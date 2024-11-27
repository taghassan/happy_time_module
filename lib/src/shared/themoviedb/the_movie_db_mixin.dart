import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiTvShowDetailsResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TVSeasonsDetailsResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBNetowrkResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/themoviedb.dart';
import 'package:happy_time_module/webview_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

//popularity.desc
//popularity.asc
//vote_average.desc
//vote_average.asc
//first_air_date.desc
//first_air_date.asc
//name.asc
//name.desc

enum SortByEnum {
  voteAverageDesc,
  voteAverageAsc,
  popularityDesc,
  popularityAsc,
  firstAirDateDesc,
  firstAirDateAsc,
  nameAsc,
  nameDesc,
}

Map<SortByEnum, String> sortOptions = {
  SortByEnum.voteAverageDesc: "vote_average.desc",
  SortByEnum.voteAverageAsc: "vote_average.asc",
  SortByEnum.popularityDesc: "popularity.desc",
  SortByEnum.popularityAsc: "popularity.asc",
  SortByEnum.firstAirDateDesc: "first_air_date.desc",
  SortByEnum.firstAirDateAsc: "first_air_date.asc",
  SortByEnum.nameAsc: "name.asc",
  SortByEnum.nameDesc: "name.desc",
};

//with_watch_providers

var networksData = [
  {
    "id": 8,
    "name": "Netflix",
    "logo":
        "https://media.themoviedb.org/t/p/original/pbpMk2JmcoNnQwx5JGpXngfoWtp.jpg"
  },
  {
    "id": 350,
    "name": "Apple TV Plus",
    "logo":
        "https://media.themoviedb.org/t/p/original/2E03IAZsX4ZaUqM7tXlctEPMGWS.jpg"
  },
  {
    "id": 232,
    "name": "Zee5",
    "logo":
        "https://media.themoviedb.org/t/p/original/vPIW5b0ebTLj9bFCZypoBbF8wSl.jpg"
  },
  {
    "id": 309,
    "name": "Sun Nxt",
    "logo":
        "https://media.themoviedb.org/t/p/original/6KEQzITx2RrCAQt5Nw9WrL1OI8z.jpg"
  },
  {
    "id": 630,
    "name": "STARZPLAY",
    "logo":
        "https://media.themoviedb.org/t/p/original/pDroY6RxYdVw63eAepag4b116Ub.jpg"
  },
  {
    "id": 629,
    "name": "OSN",
    "logo":
        "https://media.themoviedb.org/t/p/original/kC6JTo59Gj6I4vJPyBAYGh0sKAE.jpg"
  },
  {
    "id": 119,
    "name": "Amazon Prime Video",
    "logo":
        "https://media.themoviedb.org/t/p/original/dQeAar5H991VYporEjUspolDarG.jpg"
  },
  {
    "id": 692,
    "name": "Cultpix",
    "logo":
        "https://media.themoviedb.org/t/p/original/uauVx3dGWt0GICqdMCBYJObd3Mo.jpg"
  },
  {
    "id": 701,
    "name": "FilmBox+",
    "logo":
        "https://media.themoviedb.org/t/p/original/fbveJTcro9Xw2KuPIIoPPePHiwy.jpg"
  },
  {
    "id": 1715,
    "name": "Shahid VIP",
    "logo":
        "https://media.themoviedb.org/t/p/original/7qZED0kLBtiV8mLRNBtW4PQCAqW.jpg"
  },
  {
    "id": 1750,
    "name": "TOD",
    "logo":
        "https://media.themoviedb.org/t/p/original/bFxDjHDXP02u1dLPZfTsTC1L6EA.jpg"
  },
  {
    "id": 283,
    "name": "Crunchyroll",
    "logo":
        "https://media.themoviedb.org/t/p/original/mXeC4TrcgdU6ltE9bCBCEORwSQR.jpg"
  },
  {
    "id": 1958,
    "name": "AD tv",
    "logo":
        "https://media.themoviedb.org/t/p/original/mK8nfCXfwoAa6cAkHUSKCkLEIKK.jpg"
  },
  {
    "id": 2285,
    "name": "JustWatchTV",
    "logo":
        "https://media.themoviedb.org/t/p/original/uCMLyl8jGIbInVyDeCeV6kpciFm.jpg"
  }
];

enum TheMovieDBGroupEnum {
  today,
  popular,
  streaming,
  movie,
  tv

}
enum TheMovieDBPanelEnum {
  free_scroller,
  trending_scroller,
  popular_scroller,
}

mixin TheMovieDbMixin on GetxController {
  TheMovieDBHelper theMovieDBHelper = TheMovieDBHelper();

  String theMovieDBId = '1434';
  String theMovieDBTitle = '';
  String theMovieDBEpisodePageTitle = '';
  TextEditingController searchTextEditController = TextEditingController();
  List<TheMovieDbSeasonResponse> selectedTheMovieDbSeason = [];
  ApiTvShowDetailsResponse? apiTvShowDetails;
  TvSeasonsDetailsResponse? selectedTvSeasonsDetails;
  List<TheMovieDbEpisodeResponse> selectedTheMovieDbEpisodes = [];


  List<TvShowResults> trendingScrollerList = [];
  List<TvShowResults> popularScrollerList = [];
  List<TvShowResults> freeScrollerList = [];

  // List<TheMovieDBShowResponse> tvShows = [];
  List<TheMovieDbNetWorksResponse> networks = networksData
      .map<TheMovieDbNetWorksResponse>(
        (e) => TheMovieDbNetWorksResponse.fromJson(e),
      )
      .toList();

  String? networkId='8';

  List<TvShowResults> searchResults = [];

  String? selectedNetwork;
  List<TheMovieDBShowResponse> networkSearchResults = [];

  static const pageSize = 20;

  final PagingController<int, TvShowResults> tvShowsPagingController =
      PagingController(firstPageKey: 1);

  final PagingController<int, TvShowResults> moviesPagingController =
      PagingController(firstPageKey: 1);

  final PagingController<int, TvShowResults> networkPagingController =
  PagingController(firstPageKey: 1);

  initPagingController() {
    tvShowsPagingController.addPageRequestListener((pageKey) {
      AppLogger.it.logInfo("PageRequestListener $pageKey");
      fetchTvItems(page: pageKey);
    });

    moviesPagingController.addPageRequestListener((pageKey) {
      AppLogger.it.logInfo("moviesPagingController  $pageKey");
      fetchMovies(page: pageKey);
    });

    networkPagingController.addPageRequestListener((pageKey) {
      AppLogger.it.logInfo("moviesPagingController  $pageKey");
      theMovieDbSearchByNetwork(network: networkId,page: pageKey);
    });
  }

  void disposePagingController() {
    tvShowsPagingController.dispose();
    moviesPagingController.dispose();
    searchTextEditController.dispose();
    super.dispose();
  }

  fetchSeasons({required String tvShowPath}) async {
    // selectedTheMovieDbSeason =
    apiTvShowDetails=  await theMovieDBHelper.fetchSeasons(tvShowPath: tvShowPath);
    update();
  }

  fetchEpisodeList({required String url}) async {
    selectedTvSeasonsDetails =
        await theMovieDBHelper.fetchEpisodeList(url: url);
    update();
  }

  fetchMovies({required int page}) async {
    //moviesPagingController
    // await theMovieDBHelper.fetchMovies(page: page);
    AppLogger.it.logInfo("page $page");
    try {
      final movieApiResponse = await theMovieDBHelper.fetchMoviesApiItems(page: page.toString());
      // final newItems = await theMovieDBHelper.fetchMovies(page: page);
      final newItems= movieApiResponse.results??[];
      final isLastPage = newItems.length < pageSize;
      if (isLastPage) {
        moviesPagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = page + 1;
        AppLogger.it.logInfo("nextPageKey $nextPageKey");
        moviesPagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      moviesPagingController.error = error;
    }
  }

  fetchTvItems({required int page}) async {
    AppLogger.it.logInfo("page $page");
    try {

      final apiResponse=await theMovieDBHelper.fetchTvApiItems(page: page.toString());
     final newItems =apiResponse.results??[];
      // final newItems =
      //     await theMovieDBHelper.fetchTvItems(page: page.toString());
      final isLastPage = newItems.length < pageSize;
      if (isLastPage) {
        tvShowsPagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = page + 1;
        AppLogger.it.logInfo("nextPageKey $nextPageKey");
        tvShowsPagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      tvShowsPagingController.error = error;
    }
  }

  theMovieDbSearch({String? query}) async {

   final searchResult = await theMovieDBHelper.searchApi(query: query);
   searchResults=searchResult.results??[];
    // searchResults = await theMovieDBHelper.search(query: query);
    update();
  }

  theMovieDbSearchByNetwork({String? network,required int page}) async {


    try {

      AppLogger.it.logInfo(" page: $page  \nnetwork: $network ");

      var movies = await theMovieDBHelper.fetchMoviesApiItems(page: page.toString(),watchProviders: network);
      var tvShow = await theMovieDBHelper.fetchTvApiItems(page: page.toString(),watchProviders: network);
      List<TvShowResults> newItems =[
        ...movies.results??[],
        ...tvShow.results??[]
      ];

      final isLastPage = newItems.length < pageSize;
      if (isLastPage) {
        networkPagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = page + 1;
        AppLogger.it.logInfo("nextPageKey $nextPageKey");
        networkPagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      networkPagingController.error = error;
    }


    update();
  }


  Future<List<TvShowResults>> queryPanel({required TheMovieDBPanelEnum panel, required TheMovieDBGroupEnum group})async{
     final panelResult= await theMovieDBHelper.queryPanelApi(group: group.name,panel: panel);

     return panelResult.results??[];
  }

 fetchTrendingScroller()async{
   trendingScrollerList=await queryPanel(panel: TheMovieDBPanelEnum.trending_scroller, group: TheMovieDBGroupEnum.today);
   update();
  }

 fetchPopularScroller()async{
   popularScrollerList=await queryPanel(panel: TheMovieDBPanelEnum.popular_scroller, group: TheMovieDBGroupEnum.streaming);
   update();
  }

 fetchFreeScroller()async{
   freeScrollerList=await queryPanel(panel: TheMovieDBPanelEnum.free_scroller, group: TheMovieDBGroupEnum.tv);
   update();
  }


//https://vidsrc.cc/#api

  playMedia({
    required MediaTypeEnum mediaType,
    required String theMovieDBId,
    String? season,
    String? episode,
  }) async {
    switch (mediaType) {
      case MediaTypeEnum.movie:
        playMovieMedia(
            theMovieDBId: theMovieDBId, season: season, episode: episode);
      case MediaTypeEnum.series:
        playSeriesMedia(
            theMovieDBId: theMovieDBId, season: season, episode: episode);
      case MediaTypeEnum.anime:
        playAnimeMedia(
            theMovieDBId: theMovieDBId, season: season, episode: episode);
    }
  }

  Future<String?> getServer() async {
    var server = await Get.bottomSheet(Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height * 0.5,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [

                serverBtn(server: 'vidlink.pro', name: 'Server 1'),
                serverBtn(server: 'vidsrc.cc/v3/embed', name: 'Server 2'),
                // serverBtn(server: 'moviesapi.club', name: 'Server 3'),
                // serverBtn(server: 'flicky.host', name: 'Server 4'),
                serverBtn(server: 'vidsrc.vip/embed', name: 'Server 3'),
                //
                serverBtn(server: 'vidsrc.net/embed', name: 'Server 4'),
                serverBtn(server: 'vidsrc.xyz/embed', name: 'Server 5'),
                serverBtn(server: 'vidsrc.pm/embed', name: 'Server 6'),
                serverBtn(server: 'vidsrc.in/embed', name: 'Server 7'),


              ],
            ),
          )),
    ));

    return server;
  }

  Widget serverBtn({required String server, required String name}){
    return OutlinedButton(
        onPressed: () {
          Get.back(result: server);
        },
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),

            // const Icon(Icons.report_gmailerrorred)
          ],
        ))
        .size(width: Get.width * 0.8);
  }

  playMovieMedia({
    required String theMovieDBId,
    String? season,
    String? episode,
  }) async {
    var server = await getServer();
    if(server==null)return;

    String path='/$theMovieDBId';

    if(isVidSrcServer(server)){
      path='?tmdb=$theMovieDBId';
    }

    openWebViewPage(
        url: "https://$server/movie$path",
        redirectPrevent: server);
  }

  playSeriesMedia({
    required String theMovieDBId,
    String? season,
    String? episode,
  }) async {
    var server = await getServer();
    if(server==null)return;
    String  sp='/';

    if(server.contains('moviesapi.club')==true){
      sp='-';
    }

    String path='/$theMovieDBId$sp$season$sp$episode';

    if(isVidSrcServer(server)){
      path='?tmdb=$theMovieDBId&season=$season&episode=$episode';
    }

    openWebViewPage(
        url:
            "https://$server/tv$path",
        redirectPrevent: server );
  }

 bool isVidSrcServer(String server){
    return server.contains('vidsrc.net/embed')==true ||
        server.contains('vidsrc.xyz/embed')==true ||
        server.contains('vidsrc.pm/embed')==true ||
        server.contains('vidsrc.in/embed')==true ;
  }

  playAnimeMedia({
    required String theMovieDBId,
    String? season,
    String? episode,
  }) async {
    var server = await getServer();
    if(server==null)return;
    openWebViewPage(
        url:
            "https://$server/tv/$theMovieDBId/$season/$episode",
        redirectPrevent: server );
  }

  openWebViewPage({String? url, String? redirectPrevent}) {

    Get.to(
      () => WebViewPage(url: url ?? '', redirectPrevent: redirectPrevent ?? ''),
    );
  }
}

// mixin TheMovieDbMixinHelper extends GetxController with  TheMovieDbMixin{}
