import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/sub_pages/BigCardList.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeSectionPage extends GetView<HappyTimeHomeLogic> {
  const HomeSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagedGridView<int, MediaDetailsEntity>(
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          childAspectRatio: 0.5,
        ),
        pagingController: controller.homeSectionPagingController,
        builderDelegate:
        PagedChildBuilderDelegate<MediaDetailsEntity>(
          itemBuilder: (context, item, index) => EgyItemCard(
            item: item,
          ),
        ),
      ),
    );
  }
}
