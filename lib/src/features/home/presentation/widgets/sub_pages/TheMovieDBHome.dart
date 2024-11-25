import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/BigCardList.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/TheMovieDBBigCardList.dart';

class TheMovieDBHome extends GetView<HappyTimeHomeLogic> {
  const TheMovieDBHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  controller.obx((state) => CustomScrollView(

        slivers: [
          SliverAppBar(
            expandedHeight: Get.height * 0.6,
            floating: false,
            // Whether the app bar appears as soon as you scroll up
            pinned: false,
            // Whether the app bar remains visible at the top when collapsed
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                controller.selectedFeatured?.name ?? '',
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
                        // AppLogger.it.logInfo("index $index");
                        // AppLogger.it.logInfo("reason $reason");
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
                          onTap: () => controller.fetchDetails(
                              item: featuredItem, featured: true),
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
              TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.choosed, itemsList: controller.trendingScrollerList),
              TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.featured, itemsList: controller.freeScrollerList),
              TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.trending, itemsList: controller.popularScrollerList),


              controller.nativeAdWidget(3),

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

            ]),
          ),
        ]
    ),);
  }
}
