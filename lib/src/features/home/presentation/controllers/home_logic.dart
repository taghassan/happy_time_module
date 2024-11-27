import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:happy_time_module/admob_manager_plus.dart';
import 'package:happy_time_module/src/core/controller/base_controller.dart';
import 'package:happy_time_module/src/core/injectable/injection.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/family_guy.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/single_media_page.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/the_movie_db_page.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/TheMovieDBSearch.dart';
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/hosts/check.dart';
import 'package:happy_time_module/src/shared/hosts/easy_plex_supported_Hosts_model.dart';
import 'package:happy_time_module/src/shared/hosts/happy_time_video_player_view.dart';
import 'package:happy_time_module/src/shared/models/requests/PaginationRequestModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimeShowApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimesSeasonsApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/HomeContentResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/MediaDetailApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/SeriesShowApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/videos_list.dart';
import 'package:happy_time_module/src/shared/themoviedb/the_movie_db_mixin.dart';
import 'package:happy_time_module/src/shared/themoviedb/themoviedb.dart';
import 'package:happy_time_module/webview_widget.dart';
import 'package:logger/web.dart';

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
    with StateMixin<HomeState>, LoaderOverlayMixin, TheMovieDbMixin,AdmobManagerPlus ,HasNativeAdsMixin,HasRewardedAdsMixin {
  List<ScrollController> scrollController = [];
  int tempItemCount = 10;

  MoviesRemoteDataSource moviesRemoteDataSource =
      happyTimeGetIt<MoviesRemoteDataSource>();

  HomeContentResponseModel? homeContentResponse;
  MediaDetailApiResponseModel? selectedMediaDetail;
  SeriesShowApiResponseModel? selectedSeriesResponse;
  AnimeShowApiResponseModel? selectedAnimeShowResponse;
  AnimeSeasonApiResponseModel? selectedAnimeSeasonResponse;
  MediaDetailsEntity? selectedMediaDetailsEntity;
  String? selectedType;
  MediaDetailsEntity? selectedFeatured;

  BannerAd? banner;


  @override
  void onInit() async {
    banner=await  createAndLoadBanner(adUnitId: 'ca-app-pub-8107574011529731/2912692739');

    Future.delayed(Duration.zero,() async{
      adInterval=3;

      initAds(adUnitIds: [
        'ca-app-pub-8107574011529731/1305797714',
        'ca-app-pub-8107574011529731/7123260860',
        'ca-app-pub-8107574011529731/3403507702',
        'ca-app-pub-8107574011529731/6303534606',
        'ca-app-pub-8107574011529731/5899648847',
      ]);

      await loadInterstitialAd();
      loadAdRewarded(
          logger: Logger(),
          forceUseId: 'ca-app-pub-8107574011529731/1208395686');

    },);

    initPagingController();

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

    disposePagingController();
    disposeRewordAds();
    super.onClose();
  }


  Future<bool> askUserForAd() async {
    bool userAction = await Get.defaultDialog(
      barrierDismissible: false,
        title: '',
        content: const Text("هل تريد مشاهدة إعلان\n هذا سيساعدنا علي الاسمرار"),
        actions: [
          TextButton(
              onPressed: () => Get.back(result: true),
              child: const Text("نعم")),
          TextButton(
              onPressed: () => Get.back(result: false),
              child: const Text("لا،لا يهمني")),
        ]);

    return userAction;
  }


  fetchHomeContent() async {
    try {
      showLoading();
      var response = await moviesRemoteDataSource.fetchHomeContent();

      await  fetchTrendingScroller();
      await  fetchPopularScroller();
      await  fetchFreeScroller();

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
  }) async {
    try {
      showLoading();
      var response =
          await moviesRemoteDataSource.fetchSeriesShow(seriesId: seriesId);
      hideLoading();
      response.when(
        success: (SeriesShowApiResponseModel seriesResponse) {
          selectedSeriesResponse = seriesResponse;
          selectedMediaDetailsEntity = seriesResponse.mapToEntity();
          selectedMediaDetailsEntity?.setSelectedMediaTypeEnum =
              MediaTypeEnum.series;
          AppLogger.it
              .logDeveloper("seriesResponse ${seriesResponse.toJson()}");
          update();
        },
        failure: (errorResultEntity) {},
      );
    } catch (e) {
      //
      hideLoading();
    }
  }

  fetchAnimeShow({required String animeId}) async {
    try {
      showLoading();
      var response =
          await moviesRemoteDataSource.fetchAnimeShow(animeId: animeId);
      hideLoading();
      response.when(
        success: (AnimeShowApiResponseModel showResponse) {
          selectedAnimeShowResponse = showResponse;
          selectedMediaDetailsEntity = showResponse.mapToEntity();
          selectedMediaDetailsEntity?.setSelectedMediaTypeEnum =
              MediaTypeEnum.anime;
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
  }) async {
    try {
      showLoading();
      var response =
          await moviesRemoteDataSource.fetchAnimeSeasons(animeId: animeId);
      hideLoading();
      response.when(
        success: (AnimeSeasonApiResponseModel seriesResponse) {
          selectedAnimeSeasonResponse = seriesResponse;
          AppLogger.it
              .logDeveloper("seriesResponse ${seriesResponse.toJson()}");
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
  }) async {
    try {
      showLoading();
      var response =
          await moviesRemoteDataSource.fetchMediaDetail(mediaId: mediaId);
      hideLoading();
      response.when(
        success: (MediaDetailApiResponseModel mediaDetailApiResponse) {
          selectedMediaDetail = mediaDetailApiResponse;

          selectedMediaDetailsEntity = mediaDetailApiResponse.mapToEntity();
          selectedMediaDetailsEntity?.setSelectedMediaTypeEnum =
              MediaTypeEnum.movie;

          AppLogger.it.logDeveloper(
              "selectedMediaDetail ${mediaDetailApiResponse.toJson()}");
          update();
        },
        failure: (errorResultEntity) {},
      );
    } catch (e) {
      //
      hideLoading();
    }
  }

  fetchDetails({required item, bool? featured}) async {
  await showInterstitialAd();
    AppLogger.it.logInfo("type=> ${item.type}");

    selectedType = "${item.type}";

    String itemId =
        featured == true ? item.featuredId.toString() : item.id.toString();

    if (item.type.toString().toLowerCase() == 'movie') {
      await fetchMediaDetail(mediaId: itemId);
    }

    if (item.type.toString().toLowerCase() == 'anime') {
      await fetchAnimeShow(animeId: itemId);
    }

    if (item.type.toString().toLowerCase() == 'serie') {
      await fetchSeriesShow(seriesId: itemId);
    }
    update();
    Get.to(() => const SingleMediaPage());
  }

  getTextStyle({required double fontSize}) =>
      Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        shadows: <Shadow>[
          const Shadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 10.0,
            color: Colors.black87,
          ),
        ],
      );

  playVideo({required Videos video})async {
    try {

    //  await showInterstitialAd();

      AppLogger.it.logInfo("link ${video.link ?? ''}");
      AppLogger.it.logInfo("server ${video.server ?? ''}");
      AppLogger.it.logInfo("header ${video.header ?? ''}");
      AppLogger.it.logInfo("useragent ${video.useragent ?? ''}");
      UrlExtractor(
        useRemote: false,
        onComplete: (hosts) {
          if (hosts is List<EasyPlexSupportedHostsModel>) {
            var host = hosts.firstOrNull;
            if (host != null) {
              AppLogger.it.logInfo("message ${host.url}");
              AppLogger.it.logInfo("message ${host.quality}");
              AppLogger.it.logInfo("message ${host.cookie}");
              AppLogger.it.logInfo("message ${host.httpHeaders}");
              Get.to(() => HappyTimeVideoPlayerView(
                    videoPath: host.url,
                    httpHeaders: host.httpHeaders,
                  ));
            }
          } else {
            Get.to(() => WebViewPage(
                  url: "${video.link}",
                  redirectPrevent: video.link.extractFirstWord(),
                ));

            AppLogger.it.logInfo(" Link  $hosts");
          }
        },
      ).find(video.link ?? '');
    } catch (e) {
      AppLogger.it.logError(e.toString());
      Get.to(() => WebViewPage(
            url: "${video.link}",
            redirectPrevent: video.link.extractFirstWord(),
          ));
    }
  }

  void showVideosBottomSheet({required List<Videos> videos}) {
    Get.bottomSheet(Scaffold(
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          var video = videos[index];
          return InkWell(
            onTap: () => playVideo(video: video),
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.all(10),
              child: Text(
                "${video.server}",
                style: getTextStyle(
                  fontSize: 14.0,
                ),
              ).toCenter().toCardContainer(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: Get.height * 0.08,
                  color: Colors.white),
            ),
          );
        },
      ),
    ));
  }

  void goToTheMovieDbPage() async {
    try {
    //  await showInterstitialAd();

      showLoading();
      await  fetchTrendingScroller();
      await  fetchPopularScroller();
      await  fetchFreeScroller();
      hideLoading();
     Get.to(() => const TheMovieDbPage());
    } catch (e) {
      hideLoading();
    }
  }

  openTvShowPage({required String tvShowPath, required String theId, String? title}) async {
    try {
      showLoading();

      theMovieDBId = theId;
      theMovieDBTitle=title??'';
      // await fetchMovies(page:1);
      await fetchSeasons(tvShowPath: tvShowPath);
      hideLoading();
      Get.to(() => const FamilyGuyPage());
    } catch (e) {
      hideLoading();
    }
  }

  void doSearchByNetwork({String? network,String? networkName}) async {
    try {
      showLoading();
      // await theMovieDbSearchByNetwork(network: network);
      networkId=network;
      selectedNetwork=networkName;
      networkPagingController.itemList=[];
      networkPagingController.refresh();

      Get.to(()=>const NetworkSearchResulPage());
      hideLoading();
    } catch (e) {
      hideLoading();
    }
  }
  void doSearch() async {
    try {
      showLoading();
      await theMovieDbSearch(query: searchTextEditController.text);
      hideLoading();
    } catch (e) {
      hideLoading();
    }
  }

  showInterstitialAd()async{
    if(await askUserForAd())
    {

      showRewardedAd(onUserEarnedReward: (p0, p1) async{
       
        loadAdRewarded(
            logger: Logger(),
            forceUseId: 'ca-app-pub-8107574011529731/1208395686');
        Future.delayed(const Duration(seconds: 1),() async{
          await interstitialAd?.show();
          loadInterstitialAd();
        },);
      },);

    }
  }
}
