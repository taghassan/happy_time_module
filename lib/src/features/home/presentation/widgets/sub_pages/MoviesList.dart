import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/the_movie_db_page.dart';
import 'package:happy_time_module/src/shared/themoviedb/models/ApiDiscoverTvResponse.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MoviesListPage extends GetView<HappyTimeHomeLogic> {
  const MoviesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return    RefreshIndicator(
      onRefresh: ()async {

        controller.moviesPagingController.itemList=[];
        controller.moviesPagingController.refresh();

      },
      child: Column(
        children: [
          InkWell(
          onTap: () => controller.openHomeSection(page: 1,isSearch: true,homeSection: HomeSectionEnum.popular),
            child: Row(
              children: [
                IconButton(onPressed: () => controller.openHomeSection(page: 1,isSearch: true,homeSection: HomeSectionEnum.popular), icon:const Icon(Icons.search)),
                Text("search".tr)
              ],
            ),
          ),
          controller.nativeAdWidget(15),
          Expanded(child:  PagedGridView<int, TvShowResults>(
            // physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              childAspectRatio: 0.5,
            ),
            pagingController: controller.moviesPagingController,
            builderDelegate:
            PagedChildBuilderDelegate<TvShowResults>(
              itemBuilder: (context, item, index) => BuildListItem(
                item: item,
              ),
            ),
          ),)
        ],
      ),
    );
  }
}
