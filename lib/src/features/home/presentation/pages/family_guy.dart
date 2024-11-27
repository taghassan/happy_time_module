import 'dart:ui';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';

class FamilyGuyPage extends GetView<HappyTimeHomeLogic> {
  const FamilyGuyPage({super.key});

  @override
  Widget build(BuildContext context) {
   // controller.apiTvShowDetails.posterPath;
    return Scaffold(

        body: controller.obx(
          (state) {
            return Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:  controller.apiTvShowDetails?.posterPath ??
                      "http://via.placeholder.com/200x150",
                  imageBuilder: (context, imageProvider) => Stack(
                    children: [
                      Container(
                        width: Get.width,
                        height: Get.height * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            // colorFilter: ColorFilter.
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),

                      CustomScrollView(slivers: [
                        SliverAppBar(
                          backgroundColor: Colors.transparent,
                          expandedHeight: Get.height * 0.55,
                          // collapsedHeight: 100,
                          pinned: true,
                          centerTitle: false,
                          flexibleSpace: FlexibleSpaceBar(
                            title: Text(
                              (controller.apiTvShowDetails?.name ?? controller.theMovieDBTitle).trim(),
                              style:
                              Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                shadows: <Shadow>[
                                  const Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 10.0,
                                    color: Colors.black87,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SliverList(
                            delegate: SliverChildListDelegate(
                                [
                                  ListView.builder(

                                    scrollDirection: Axis.horizontal,
                                    itemCount: (controller.apiTvShowDetails?.seasons??[]).length,
                                    itemBuilder: (context, index) {
                                      var season = (controller.apiTvShowDetails?.seasons??[])[index];
                                      // AppLogger.it.logInfo(" backdropPath : ${controller.apiTvShowDetails?.backdropPath  } ");
                                      return InkWell(
                                        child: FamilyGuyImageBuilder(
                                          url: "${season.image}",
                                          width: Get.width*0.4,
                                          height: Get.height * 0.1,
                                        ).paddingAll(3),
                                        onTap: () async {
                                          try {
                                            controller.showLoading();
                                            await controller.fetchEpisodeList(
                                                url: "${season.urlPath}");
                                            controller.theMovieDBEpisodePageTitle = season.name ?? '';
                                            controller.hideLoading();

                                            // Get.to(() => const FamilyGuyPageEpisode());
                                          } catch (e) {
                                            controller.hideLoading();
                                          }
                                        },
                                      );
                                    },

                                  ).size(height: Get.height*0.2,width: Get.width),
                                  context.sizedBoxHeightMicro,
                                  Text(controller.selectedTvSeasonsDetails?.name??'', style:
                                  Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    shadows: <Shadow>[
                                      const Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 10.0,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),textAlign: TextAlign.center,),

                                  GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 3,crossAxisSpacing: 3,),
                                    itemCount: (controller.selectedTvSeasonsDetails?.episodes??[]).length,
                                    itemBuilder: (context, index) {
                                      var episode = (controller.selectedTvSeasonsDetails?.episodes??[])[index];

                                      // AppLogger.it.logInfo("episode ${episode.toJson()}");
                                      return InkWell(
                                        onTap: () async {
                                          await controller.showInterstitialAd();
                                          controller.playMedia(mediaType: MediaTypeEnum.series, theMovieDBId: '${episode.showId}',season: '${episode.seasonNumber}',episode: '${episode.episodeNumber}');

                                        },
                                        child: FamilyGuyImageBuilder(
                                          url: "${episode.image}",
                                          width: Get.width * 0.15,
                                          height: Get.height * 0.1,
                                          title: episode.name,
                                        ),
                                      );

                                    },
                                  )

                                  //
                                  /*
              Column(
                children: [
                  controller.nativeAdWidget(9),
                  Expanded(child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3,
                        childAspectRatio: 0.5),
                    itemCount: (controller.apiTvShowDetails?.seasons??[]).length,
                    itemBuilder: (context, index) {
                      var season = (controller.apiTvShowDetails?.seasons??[])[index];
                      AppLogger.it.logInfo(" backdropPath : ${controller.apiTvShowDetails?.backdropPath  } ");
                      return InkWell(
                        child: FamilyGuyImageBuilder(
                          url: "${season.image}",
                          width: Get.width,
                          height: Get.height * 0.1,
                        ),
                        onTap: () async {
                          try {
                            controller.showLoading();
                            await controller.fetchEpisodeList(
                                url: "${season.urlPath}");
                            controller.theMovieDBEpisodePageTitle = season.name ?? '';
                            controller.hideLoading();

                            Get.to(() => const FamilyGuyPageEpisode());
                          } catch (e) {
                            controller.hideLoading();
                          }
                        },
                      );
                    },
                  ),)
                ],
              ),
              //

              */

                                ]))
                      ]),

                    ],
                  ),
                  placeholder: (context, url) => Container(
                    width: Get.width,
                    height: Get.height * 0.6,
                    color: Colors.black87,
                  ).applyShimmer(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),



              ],
            );
          },
        ));
  }
}

class FamilyGuyPageEpisode extends GetView<HappyTimeHomeLogic> {
  const FamilyGuyPageEpisode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.selectedTvSeasonsDetails?.name??''),
        ),
        body: controller.obx(
          (state) {
            return Column(
              children: [
                controller.nativeAdWidget(12),
                Expanded(child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 0.5),
                  itemCount: (controller.selectedTvSeasonsDetails?.episodes??[]).length,
                  itemBuilder: (context, index) {
                    var episode = (controller.selectedTvSeasonsDetails?.episodes??[])[index];

                    // AppLogger.it.logInfo("episode ${episode.toJson()}");
                    return InkWell(
                      onTap: () async {
                        await controller.showInterstitialAd();
                       controller.playMedia(mediaType: MediaTypeEnum.series, theMovieDBId: '${episode.showId}',season: '${episode.seasonNumber}',episode: '${episode.episodeNumber}');

                      },
                      child: FamilyGuyImageBuilder(
                        url: "${episode.image}",
                        width: Get.width * 0.15,
                        height: Get.height * 0.1,
                        title: episode.name,
                      ),
                    );

                  },
                ),)
              ],
            );
          },
        ));
  }
}

class FamilyGuyImageBuilder extends StatelessWidget {
  final String url;
  final String? title;
  final double? width, height;

  const FamilyGuyImageBuilder(
      {super.key, required this.url, this.height, this.width, this.title});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (context, imageProvider) => Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(3))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 5.0,
                          color: Colors.black54,
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
        placeholder: (context, url) => Container(
              width: width,
              height: height,
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            ).applyShimmer(),
        errorWidget: (context, url, error) => Container(
              width: width,
              height: height,
              color: Colors.grey,
            ) //.applyShimmer(baseColor: Colors.red,highlightColor: Colors.white30)
        );
  }
}
