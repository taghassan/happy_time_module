import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBEpisodeResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBSeasonResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/themoviedb.dart';

mixin TheMovieDbMixin on GetxController
{
  TheMovieDBHelper theMovieDBHelper=TheMovieDBHelper();

  var theMovieDBId =1434;
  List<TheMovieDbSeasonResponse>  selectedTheMovieDbSeason=[];
  List<TheMovieDbEpisodeResponse> selectedTheMovieDbEpisodes = [];
  fetchSeasons({required String id})async {

    selectedTheMovieDbSeason= await theMovieDBHelper.fetchSeasons(id: id);
    update();
  }

  fetchEpisodeList({required String url})async{
    selectedTheMovieDbEpisodes =await theMovieDBHelper.fetchEpisodeList(url: url);
    update();
  }
}
// mixin TheMovieDbMixinHelper extends GetxController with  TheMovieDbMixin{}
