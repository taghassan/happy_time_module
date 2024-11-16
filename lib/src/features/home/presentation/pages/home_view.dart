import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/list_of_case_view.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/single_case_view.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/case_card_widget.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/category_item_card_for_list.dart';

import '../controllers/home_logic.dart';

class HappyTimeHomePage extends GetView<HappyTimeHomeLogic> {
  const HappyTimeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) {
          if (controller.homeContentResponse == null) {
            return Text("No Data");
          }

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: Get.height * 0.6,
                floating: false,
                // Whether the app bar appears as soon as you scroll up
                pinned: false,
                // Whether the app bar remains visible at the top when collapsed
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    controller.selectedFeatured?.title ?? '',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                  centerTitle: true,
                  background: CarouselSlider.builder(
                      itemCount:
                          controller.homeContentResponse?.featured?.length,
                      options: CarouselOptions(
                        height: Get.height * 0.65,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        enlargeFactor: 0.1,
                        onPageChanged: (index, reason) {
                          try {
                            controller.selectedFeatured = controller
                                .homeContentResponse?.featured?[index];
                            controller.update();
                            AppLogger.it.logInfo("index $index");
                            AppLogger.it.logInfo("reason $reason");
                          } catch (_) {}
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                      itemBuilder: (context, index, realIndex) {
                        var featuredItem =
                            controller.homeContentResponse?.featured?[index];

                        return Builder(
                          builder: (BuildContext context) {
                            return InkWell(
                              onTap: () => controller.fetchDetails(item:featuredItem,featured:true),
                              child: Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: featuredItem?.posterPath ??
                                        "http://via.placeholder.com/200x150",
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    placeholder: (context, url) => Container(
                                      width: Get.width,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ).applyShimmer(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                  Container(
                                      width: Get.width,
                                      height: Get.height * 0.65,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          stops: [0, 80, 100],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black54,
                                            Colors.black,
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      }),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.thisweek,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.latest,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.choosed,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.recommended,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.trending,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.pinned,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.top10,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.popular,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.recents,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.featured,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.anime,
                ),
                BigCardList(
                  scrollController: ScrollController(),
                  homeSectionEnum: HomeSectionEnum.popularSeries,
                ),
              ]))
            ],
          );
        },
      ),
    );
  }
}

class BigCardList extends GetView<HappyTimeHomeLogic> {
  final HomeSectionEnum homeSectionEnum;
  final ScrollController scrollController;

  const BigCardList(
      {super.key,
      required this.scrollController,
      required this.homeSectionEnum});

  @override
  Widget build(BuildContext context) {
    dynamic itemsList = controller.homeContentResponse?.latest;
    switch (homeSectionEnum) {
      case HomeSectionEnum.latest:
        itemsList = controller.homeContentResponse?.latest;
      case HomeSectionEnum.choosed:
        itemsList = controller.homeContentResponse?.choosed;
      case HomeSectionEnum.recommended:
        itemsList = controller.homeContentResponse?.recommended;
      case HomeSectionEnum.thisweek:
        itemsList = controller.homeContentResponse?.thisweek;
      case HomeSectionEnum.trending:
        itemsList = controller.homeContentResponse?.trending;
      case HomeSectionEnum.pinned:
        itemsList = controller.homeContentResponse?.pinned;
      case HomeSectionEnum.top10:
        itemsList = controller.homeContentResponse?.top10;
      case HomeSectionEnum.popular:
        itemsList = controller.homeContentResponse?.popular;
      case HomeSectionEnum.recents:
        itemsList = controller.homeContentResponse?.recents;
      case HomeSectionEnum.popularCasters:
        itemsList = controller.homeContentResponse?.popularCasters;
      case HomeSectionEnum.featured:
        itemsList = controller.homeContentResponse?.featured;
      case HomeSectionEnum.anime:
        itemsList = controller.homeContentResponse?.anime;
      case HomeSectionEnum.popularSeries:
        itemsList = controller.homeContentResponse?.popularSeries;
      case HomeSectionEnum.livetv:
        itemsList = controller.homeContentResponse?.livetv;
    }

    return controller.obx(
      (state) => InkWell(
        onTap: () {
          Get.to(() => const SingleCaseView());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  homeSectionEnum.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Icon(Icons.open_in_new)
              ],
            ),
            context.sizedBoxHeightMicro,
            ListView.builder(
                controller: scrollController,
                // 👈 assign scrollController here
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: itemsList?.length,
                // itemExtent: 100,
                itemBuilder: (context, index) {
                  var item = itemsList?[index];

                  return item != null
                      ? CachedNetworkImage(
                          imageUrl: item.posterPath ??
                              "http://via.placeholder.com/200x150",
                          imageBuilder: (context, imageProvider) => InkWell(
                            onTap: () => controller.fetchDetails(item:item),
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
                                      item.subtitle ?? '',
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
                            width: Get.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ).applyShimmer(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )
                      : const Icon(Icons.error);
                }).size(
              height: Get.height * 0.36,
            ),
            // Text("${scrollController.position.maxScrollExtent??''}")
          ],
        ).paddingAll(8),
      ),
    );
  }
}

class SmallCardList extends StatelessWidget {
  final ScrollController scrollController;

  const SmallCardList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemExtent: 100,
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            Get.to(() => const ListOfCaseView());
          },
          child: const CategoryItemCardForList().marginAll(3)),
    ).size(
      height: Get.height * 0.2,
    );
  }
}
