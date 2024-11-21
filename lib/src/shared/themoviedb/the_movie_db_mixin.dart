import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/themoviedb.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin TheMovieDbMixin on GetxController
{
  TheMovieDBHelper theMovieDBHelper=TheMovieDBHelper();

  String theMovieDBId ='1434';
  List<TheMovieDbSeasonResponse>  selectedTheMovieDbSeason=[];
  List<TheMovieDbEpisodeResponse> selectedTheMovieDbEpisodes = [];
  List<TheMovieDBShowResponse> tvShows = [];

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

}

// mixin TheMovieDbMixinHelper extends GetxController with  TheMovieDbMixin{}
