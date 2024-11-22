import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/models/responses/NetworkListApiResponseModel.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBNetowrkResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/themoviedb.dart';
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

var networksData=[
  {
    "id": 8,
    "name": "Netflix",
    "logo": "https://media.themoviedb.org/t/p/original/pbpMk2JmcoNnQwx5JGpXngfoWtp.jpg"
  },
  {
    "id": 350,
    "name": "Apple TV Plus",
    "logo": "https://media.themoviedb.org/t/p/original/2E03IAZsX4ZaUqM7tXlctEPMGWS.jpg"
  },
  {
    "id": 232,
    "name": "Zee5",
    "logo": "https://media.themoviedb.org/t/p/original/vPIW5b0ebTLj9bFCZypoBbF8wSl.jpg"
  },
  {
    "id": 309,
    "name": "Sun Nxt",
    "logo": "https://media.themoviedb.org/t/p/original/6KEQzITx2RrCAQt5Nw9WrL1OI8z.jpg"
  },
  {
    "id": 630,
    "name": "STARZPLAY",
    "logo": "https://media.themoviedb.org/t/p/original/pDroY6RxYdVw63eAepag4b116Ub.jpg"
  },
  {
    "id": 629,
    "name": "OSN",
    "logo": "https://media.themoviedb.org/t/p/original/kC6JTo59Gj6I4vJPyBAYGh0sKAE.jpg"
  },
  {
    "id": 119,
    "name": "Amazon Prime Video",
    "logo": "https://media.themoviedb.org/t/p/original/dQeAar5H991VYporEjUspolDarG.jpg"
  },
  {
    "id": 692,
    "name": "Cultpix",
    "logo": "https://media.themoviedb.org/t/p/original/uauVx3dGWt0GICqdMCBYJObd3Mo.jpg"
  },
  {
    "id": 701,
    "name": "FilmBox+",
    "logo": "https://media.themoviedb.org/t/p/original/fbveJTcro9Xw2KuPIIoPPePHiwy.jpg"
  },
  {
    "id": 1715,
    "name": "Shahid VIP",
    "logo": "https://media.themoviedb.org/t/p/original/7qZED0kLBtiV8mLRNBtW4PQCAqW.jpg"
  },
  {
    "id": 1750,
    "name": "TOD",
    "logo": "https://media.themoviedb.org/t/p/original/bFxDjHDXP02u1dLPZfTsTC1L6EA.jpg"
  },
  {
    "id": 283,
    "name": "Crunchyroll",
    "logo": "https://media.themoviedb.org/t/p/original/mXeC4TrcgdU6ltE9bCBCEORwSQR.jpg"
  },
  {
    "id": 1958,
    "name": "AD tv",
    "logo": "https://media.themoviedb.org/t/p/original/mK8nfCXfwoAa6cAkHUSKCkLEIKK.jpg"
  },
  {
    "id": 2285,
    "name": "JustWatchTV",
    "logo": "https://media.themoviedb.org/t/p/original/uCMLyl8jGIbInVyDeCeV6kpciFm.jpg"
  }
];

mixin TheMovieDbMixin on GetxController
{

  TheMovieDBHelper theMovieDBHelper=TheMovieDBHelper();

  String theMovieDBId ='1434';
  String theMovieDBTitle ='';
  String theMovieDBEpisodePageTitle ='';
  TextEditingController searchTextEditController=TextEditingController();
  List<TheMovieDbSeasonResponse>  selectedTheMovieDbSeason=[];
  List<TheMovieDbEpisodeResponse> selectedTheMovieDbEpisodes = [];
  // List<TheMovieDBShowResponse> tvShows = [];
  List<TheMovieDbNetWorksResponse> networks=networksData.map<TheMovieDbNetWorksResponse>((e) => TheMovieDbNetWorksResponse.fromJson(e),).toList();

  List<TheMovieDBShowResponse> searchResults = [];

  static const pageSize = 20;

  final PagingController<int, TheMovieDBShowResponse> tvShowsPagingController =
  PagingController(firstPageKey: 0);

  final PagingController<int, TheMovieDBShowResponse> moviesPagingController =
  PagingController(firstPageKey: 0);


  initPagingController(){
    tvShowsPagingController.addPageRequestListener((pageKey) {
      AppLogger.it.logInfo("PageRequestListener $pageKey");
      fetchTvItems(page: pageKey);
    });

    moviesPagingController.addPageRequestListener((pageKey) {
      AppLogger.it.logInfo("moviesPagingController  $pageKey");
      fetchMovies(page: pageKey);
    });
  }
  void disposePagingController() {
    tvShowsPagingController.dispose();
    moviesPagingController.dispose();
    searchTextEditController.dispose();
    super.dispose();
  }



  fetchSeasons({required String tvShowPath})async {

    selectedTheMovieDbSeason= await theMovieDBHelper.fetchSeasons(tvShowPath: tvShowPath);
    update();
  }

  fetchEpisodeList({required String url})async{
    selectedTheMovieDbEpisodes =await theMovieDBHelper.fetchEpisodeList(url: url);
    update();
  }

  fetchMovies({required int page})async{//moviesPagingController
    // await theMovieDBHelper.fetchMovies(page: page);
   AppLogger.it.logInfo("page $page");
   try {
     final newItems = await theMovieDBHelper.fetchMovies(page: page);
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
  fetchTvItems({required int page})async{


AppLogger.it.logInfo("page $page");
   try {
     final newItems = await theMovieDBHelper.fetchTvItems(page: page.toString());
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
    searchResults= await theMovieDBHelper.search(query: query);
    update();
  }

}

// mixin TheMovieDbMixinHelper extends GetxController with  TheMovieDbMixin{}
