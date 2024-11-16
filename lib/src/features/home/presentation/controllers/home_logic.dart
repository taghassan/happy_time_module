import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/controller/base_controller.dart';
import 'package:happy_time_module/src/core/injectable/injection.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/single_media_page.dart';
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source.dart';
import 'package:happy_time_module/src/shared/models/requests/PaginationRequestModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimeShowApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimesSeasonsApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/HomeContentResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/MediaDetailApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/SeriesShowApiResponseModel.dart';

import 'home_state.dart';

enum HomeSectionEnum {
  latest,
  choosed,
  recommended,
  thisweek,
  trending,
  pinned,
  top10,
  popular,
  recents,
  popularCasters,
  featured,
  anime,
  popularSeries,
  livetv,
}

class HappyTimeHomeLogic extends BaseController
    with StateMixin<HomeState>, LoaderOverlayMixin {
  List<ScrollController> scrollController = [];
  int tempItemCount = 10;

  MoviesRemoteDataSource moviesRemoteDataSource =
      happyTimeGetIt<MoviesRemoteDataSource>();

  HomeContentResponseModel? homeContentResponse;
  MediaDetailApiResponseModel? selectedMediaDetail;
  SeriesShowApiResponseModel? selectedSeriesResponse;
  AnimeShowApiResponseModel? selectedAnimeShowResponse;
  AnimeSeasonApiResponseModel? selectedAnimeSeasonResponse;
  String? selectedType;
  Featured? selectedFeatured;

  @override
  void onInit() async {
    scrollController = List.generate(
      20,
      (index) => ScrollController(),
    ).toList();

    await fetchHomeContent();

    addControllerListener();
    addControllerAutoScroll();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onClose() {
    for (ScrollController controller in scrollController) {
      controller.dispose();
    }
    super.onClose();
  }

  fetchHomeContent() async {
    try {
      showLoading();
      var response = await moviesRemoteDataSource.fetchHomeContent();
      hideLoading();
      response.when(
        success: (HomeContentResponseModel homeContent) {
          homeContentResponse = homeContent;
          update();
        },
        failure: (errorResultEntity) {},
      );
    } catch (e) {
      //
      hideLoading();
    }
  }

  // 👈 create animation in initState
  addControllerAutoScroll() {
    for (ScrollController controller in scrollController) {
      startScrolling(controller: controller);
    }
  }

  //👉 If you want infinite scrolling use the following code
  addControllerListener() {
    for (ScrollController controller in scrollController) {
      controller.addListener(
        () {
          if (controller.position.pixels ==
              controller.position.maxScrollExtent) {
            // Scroll has reached the end, reset the position to the beginning.
            controller.jumpTo(controller.position.minScrollExtent);
            startScrolling(controller: controller);
          }
        },
      );
    }
  }

  void startScrolling({required ScrollController controller}) {
    Future.delayed(const Duration(seconds: 1), () {
      if (controller.hasClients) {
        controller.animateTo(controller.position.maxScrollExtent,
            duration: Duration(seconds: tempItemCount * 10),
            curve: Curves.linear);

        Future.delayed(
          Duration.zero,
          () => update(),
        );
      }
    });
  }


  //series/show
  fetchSeriesShow({
    required String seriesId,
  })async{
    try {
      showLoading();
      var response = await moviesRemoteDataSource.fetchSeriesShow(seriesId: seriesId);
      hideLoading();
      response.when(
        success: (SeriesShowApiResponseModel seriesResponse) {
          selectedSeriesResponse = seriesResponse;
          AppLogger.it.logDeveloper("seriesResponse ${seriesResponse.toJson()}");
          update();
        },
        failure: (errorResultEntity) {},
      );
    } catch (e) {
      //
      hideLoading();
    }
  }

  fetchAnimeShow({required String animeId}) async{
    try {
      showLoading();
      var response = await moviesRemoteDataSource.fetchAnimeShow(animeId: animeId);
      hideLoading();
      response.when(
        success: (AnimeShowApiResponseModel showResponse) {
          selectedAnimeShowResponse = showResponse;
          AppLogger.it.logDeveloper("seriesResponse ${showResponse.toJson()}");
          update();
        },
        failure: (errorResultEntity) {},
      );
    } catch (e) {
      //
      hideLoading();
    }
  }
  //animes/seasons/759
   fetchAnimeSeasons({
    required String animeId,
    PaginationRequestModel? pagination,
  })async{
     try {
       showLoading();
       var response = await moviesRemoteDataSource.fetchAnimeSeasons(animeId: animeId);
       hideLoading();
       response.when(
         success: (AnimeSeasonApiResponseModel seriesResponse) {
           selectedAnimeSeasonResponse = seriesResponse;
           AppLogger.it.logDeveloper("seriesResponse ${seriesResponse.toJson()}");
           update();
         },
         failure: (errorResultEntity) {},
       );
     } catch (e) {
       //
       hideLoading();
     }
   }
  //animes/seasons/759
   fetchMediaDetail({
    required String mediaId,
  })async{

     try {
       showLoading();
       var response = await moviesRemoteDataSource.fetchMediaDetail(mediaId: mediaId);
       hideLoading();
       response.when(
         success: (MediaDetailApiResponseModel mediaDetailApiResponse) {
           selectedMediaDetail = mediaDetailApiResponse;
           AppLogger.it.logDeveloper("selectedMediaDetail ${mediaDetailApiResponse.toJson()}");
           update();
         },
         failure: (errorResultEntity) {},
       );
     } catch (e) {
       //
       hideLoading();
     }

   }

  fetchDetails({required item,  bool? featured}) async{

      AppLogger.it.logInfo("type=> ${item.type}");

      selectedType="${item.type}";

      String itemId = featured==true? item.featuredId.toString(): item.id.toString();

      if(item.type.toString().toLowerCase()=='movie'){
      await  fetchMediaDetail(
            mediaId: itemId);
      }

      if(item.type.toString().toLowerCase()=='anime'){
       await fetchAnimeShow(
            animeId: itemId);
      }

      if(item.type.toString().toLowerCase()=='serie'){
       await fetchSeriesShow(
            seriesId: itemId);
      }
update();
      Get.to(()=>const SingleMediaPage());
    
  }
}
