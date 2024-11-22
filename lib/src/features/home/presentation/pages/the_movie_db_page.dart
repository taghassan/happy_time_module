import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
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
            length: 2,
            child: Column(
              children: [
                const TabBar(tabs: [
                  Tab(
                    child: Text("Tv shows"),
                  ),
                  Tab(
                    child: Text("Movies"),
                  )
                ]),
                controller.nativeAdWidget(6),
                Expanded(
                    child: TabBarView(children: [
                  PagedGridView<int, TheMovieDBShowResponse>(
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
                  ),
                  PagedGridView<int, TheMovieDBShowResponse>(
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
                  ),
                ]))
              ],
            )));
  }
}

class BuildListItem extends GetView<HappyTimeHomeLogic> {
  final TheMovieDBShowResponse item;

  const BuildListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        if (item.showType == ShowTypes.tv) {
          controller.openTvShowPage(
            tvShowPath: item.urlPath.toString(),
            theId: item.theMovieDBId.toString(),
            title: item.name
          );
        } else if (item.showType == ShowTypes.movie) {
          await controller.showInterstitialAd();
          controller.playMedia(
            mediaType: MediaTypeEnum.movie,
            theMovieDBId: item.theMovieDBId??''
          );
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
        body: controller.obx(
          (state) => GridView.builder(
            itemCount: controller.searchResults.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
        ));
  }
}
