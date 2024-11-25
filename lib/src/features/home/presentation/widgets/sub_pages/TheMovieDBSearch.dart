
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/components/plus_search_bar.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/the_movie_db_page.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
      body: controller.obx(
            (state) => PagedGridView<int, TvShowResults>(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            childAspectRatio: 0.5,
          ),
          pagingController: controller.networkPagingController,
          builderDelegate: PagedChildBuilderDelegate<TvShowResults>(
            itemBuilder: (context, item, index) => BuildListItem(
              item: item,
            ),
          ),
        ),
      ),
    );
  }
}
