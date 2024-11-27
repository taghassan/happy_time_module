import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/core/widgets/components/plus_search_bar.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/home_view.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/MoviesList.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/TheMovieDBHome.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/TheMovieDBSearch.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/TvShowsList.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/webview_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TheMovieDbPage extends GetView<HappyTimeHomeLogic> {
  const TheMovieDbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: TabBar(tabs: [
            Tab(
              child: Text("home".tr),
            ),
            Tab(
              child: Text("tv shows".tr),
            ),
            Tab(
              child: Text("movies".tr),
            )
          ]),
          body: const Expanded(
            child: TabBarView(children: [
              TheMovieDBHome(),
              TvShowsListPage(),
              MoviesListPage(),
            ]),
          ),
        ),
      ),
    );
  }
}

class BuildListItem extends GetView<HappyTimeHomeLogic> {
  final TvShowResults item;

  const BuildListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // if (item.showType == ShowTypes.tv) {
        //   controller.openTvShowPage(
        //       tvShowPath: item.urlPath.toString(),
        //       theId: item.theMovieDBId.toString(),
        //       title: item.name);
        // } else if (item.showType == ShowTypes.movie) {
        //   await controller.showInterstitialAd();
        //   controller.playMedia(
        //       mediaType: MediaTypeEnum.movie,
        //       theMovieDBId: item.theMovieDBId ?? '');
        // }
        AppLogger.it.logInfo("Hi this is ${item.apiShowType}");
        if (item.apiShowType == ApiShowTypes.tv) {
          controller.openTvShowPage(
              tvShowPath: item.urlPath.toString(),
              theId: item.theMovieDBId.toString(),
              title: item.name);
        } else if (item.apiShowType == ApiShowTypes.movie) {
          await controller.showInterstitialAd();
          controller.playMedia(
              mediaType: MediaTypeEnum.movie,
              theMovieDBId: item.theMovieDBId ?? '');
        }
      },
      child: CachedNetworkImage(
        imageUrl: item.image ?? "http://via.placeholder.com/200x150",
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
        ),
        placeholder: (context, url) => Container(
          color: Colors.grey,
        ).applyShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
