import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';

class TheMovieDBBigCardList extends GetView<HappyTimeHomeLogic> {
  final HomeSectionEnum homeSectionEnum;
  final ScrollController scrollController;

  final List<TvShowResults> itemsList;

  const TheMovieDBBigCardList(
      {super.key,
        required this.scrollController,
        required this.homeSectionEnum,
        required this.itemsList
      });

  @override
  Widget build(BuildContext context) {



    return controller.obx(
          (state) =>  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                homeSectionEnum.name.tr,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            IconButton(onPressed: () {
              
            }, icon:   const Icon(Icons.open_in_new))
            ],
          ),
          context.sizedBoxHeightMicro,
          ListView.builder(
              controller: scrollController,
              // 👈 assign scrollController here
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: itemsList.length,
              // itemExtent: 100,
              itemBuilder: (context, index) {
                var item = itemsList[index];

                return   CachedNetworkImage(
                  imageUrl: item.image ??
                      "http://via.placeholder.com/200x150",
                  imageBuilder: (context, imageProvider) => InkWell(
                    onTap: () async {
                      AppLogger.it.logInfo("Hi this is ${item.apiShowType}" );
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
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(3),
                          width: Get.width * 0.4,
                          height: Get.height * 0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Text(
                              item.name ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  placeholder: (context, url) => Container(
                    width: Get.width * 0.4,
                    height: Get.height * 0.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ).applyShimmer(),
                  errorWidget: (context, url, error) =>
                      Container(
                        width: Get.width * 0.4,
                        height: Get.height * 0.2  ,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),

                        ),
                        child: const Center(child: Icon(Icons.warning_amber),),
                      ),
                );
              }).size(
            height: Get.height * 0.36,
          ),
          // Text("${scrollController.position.maxScrollExtent??''}")
        ],
      ).paddingAll(8),

    );
  }
}
