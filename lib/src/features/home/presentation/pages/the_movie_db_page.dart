import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/components/plus_search_bar.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/TheMovieDBShowResponse.dart';
import 'package:happy_time_module/webview_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TheMovieDbPage extends GetView<HappyTimeHomeLogic> {
  const TheMovieDbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () => Get.to(() => const TheMovieDBSearch()),
              child: const Icon(Icons.search).paddingAll(10),
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => controller.openTvShowPage(
        //     tvShowPath: '/tv/1434-family-guy',
        //     theId: '1434',
        //   ),
        //   backgroundColor: Colors.transparent,
        //   child: Container(
        //     decoration: const BoxDecoration(
        //         image: DecorationImage(
        //             image: NetworkImage(
        //               "https://media.themoviedb.org/t/p/w130_and_h195_bestv2/wR0yAfQKFMtITi1Iiy9CuqDPTfZ.jpg",
        //             ),
        //             fit: BoxFit.cover),
        //         borderRadius: BorderRadius.all(Radius.circular(10))),
        //     height: 70,
        //     width: 50,
        //   ),
        // ),
        body: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(tabs: [
                  Tab(
                    child: Text("Home"),
                  ),
                  Tab(
                    child: Text("Tv shows"),
                  ),
                  Tab(
                    child: Text("Movies"),
                  )
                ]),

                // controller.nativeAdWidget(15),
                Expanded(
                    child: TabBarView(children: [

                      SingleChildScrollView(

                        child: Column(
                          children: [
                            TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.choosed, itemsList: controller.trendingScrollerList),

                            TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.featured, itemsList: controller.freeScrollerList),
                            TheMovieDBBigCardList(scrollController: ScrollController(), homeSectionEnum: HomeSectionEnum.popularSeries, itemsList: controller.popularScrollerList),

                          ],
                        ),
                      ),

                  Column(
                    children: [
                      controller.nativeAdWidget(6),
                     Expanded(child:  PagedGridView<int, TheMovieDBShowResponse>(
                       physics: const NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       gridDelegate:
                       const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                         mainAxisSpacing: 3,
                         crossAxisSpacing: 3,
                         childAspectRatio: 0.5,
                       ),
                       pagingController: controller.tvShowsPagingController,
                       builderDelegate:
                       PagedChildBuilderDelegate<TheMovieDBShowResponse>(
                         itemBuilder: (context, item, index) => BuildListItem(
                           item: item,
                         ),
                       ),
                     ),)
                    ],
                  ),

                      Column(
                        children: [
                          controller.nativeAdWidget(15),
                          Expanded(child:  PagedGridView<int, TheMovieDBShowResponse>(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 3,
                              crossAxisSpacing: 3,
                              childAspectRatio: 0.5,
                            ),
                            pagingController: controller.moviesPagingController,
                            builderDelegate:
                            PagedChildBuilderDelegate<TheMovieDBShowResponse>(
                              itemBuilder: (context, item, index) => BuildListItem(
                                item: item,
                              ),
                            ),
                          ),)
                        ],
                      )
                ])),
               
              ],
            )),
    );
  }
}

class BuildListItem extends GetView<HappyTimeHomeLogic> {
  final TheMovieDBShowResponse item;

  const BuildListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (item.showType == ShowTypes.tv) {
          controller.openTvShowPage(
              tvShowPath: item.urlPath.toString(),
              theId: item.theMovieDBId.toString(),
              title: item.name);
        } else if (item.showType == ShowTypes.movie) {
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

class TheMovieDBSearch extends GetView<HappyTimeHomeLogic> {
  const TheMovieDBSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: PlusSearchInput(
            searchController: controller.searchTextEditController,
            hintText: 'search',
            onSubmitted: (p0) {
              controller.doSearch();
            },
          ),
          // leading: TextButton(
          //   onPressed: controller.doSearch,
          //   child: const Icon(Icons.search),
          // ),
        ),
        body: controller.obx((state) => Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.networks.length,
                  itemBuilder: (context, index) {
                    var network = controller.networks[index];
                    return InkWell(
                      onTap: () => controller.doSearchByNetwork(
                          network: network.id.toString(),
                          networkName: network.name),
                      child: CachedNetworkImage(
                        imageUrl: network.logo ?? '',
                        imageBuilder: (context, imageProvider) => Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: imageProvider)),
                        ),
                      ),
                    );
                  },
                ).size(height: Get.height * 0.15),
                Expanded(
                  child: GridView.builder(
                    itemCount: controller.searchResults.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,
                      childAspectRatio: 0.5,
                    ),
                    itemBuilder: (context, index) {
                      var item = controller.searchResults[index];
                      return BuildListItem(
                        item: item,
                      );
                    },
                  ),
                )
              ],
            )));
  }
}

class NetworkSearchResulPage extends GetView<HappyTimeHomeLogic> {
  const NetworkSearchResulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.selectedNetwork ?? ''),
        ),
        body: controller.obx((state) => PagedGridView<int, TheMovieDBShowResponse>(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            childAspectRatio: 0.5,
          ),
          pagingController: controller.networkPagingController,
          builderDelegate:
          PagedChildBuilderDelegate<TheMovieDBShowResponse>(
            itemBuilder: (context, item, index) => BuildListItem(
              item: item,
            ),
          ),
        ),

        ),);
  }
}

class TheMovieDBBigCardList extends GetView<HappyTimeHomeLogic> {
  final HomeSectionEnum homeSectionEnum;
  final ScrollController scrollController;

  final List<TheMovieDBShowResponse> itemsList;

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
                const Icon(Icons.open_in_new)
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
                        if (item.showType == ShowTypes.tv) {
                          controller.openTvShowPage(
                              tvShowPath: item.urlPath.toString(),
                              theId: item.theMovieDBId.toString(),
                              title: item.name);
                        } else if (item.showType == ShowTypes.movie) {
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
                          child: Center(child: Icon(Icons.warning_amber),),
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
