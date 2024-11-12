import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:happy_time_module/generated/assets.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/components/plus_promo_card.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/list_of_case_view.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/single_case_view.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/case_card_widget.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/category_item_card_for_list.dart';

import '../controllers/home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: SingleChildScrollView(
        child: controller.obx(
          (state) => Skeletonizer(
            enabled: false,
            ignoreContainers: false,
            child: Column(
              children: [
                context.sizedBoxHeightExtraSmall,
                CarouselSlider.builder(
                  itemCount: 30,
                  options: CarouselOptions(
                    height: Get.height * 0.25,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.15,
                    onPageChanged: (index, reason) {},
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIndex) => Builder(
                    builder: (BuildContext context) {
                      return PlusPromoCard(
                        backgroundPath: Assets.iconsEmptybox,
                        isNetworkImage: false,
                        imagePath: Assets.iconsEmptybox,
                        isNetworkImageBackground: false,
                        child: Center(
                          child: Text("data $index"),
                        ),
                      );
                    },
                  ),
                ),
                for (var (index, item) in controller.scrollController.indexed) ...[
                  if ((index + 1) % 3 == 0) ...[
                    context.sizedBoxHeightMicro,
                     SmallCardList(scrollController:item),
                  ] else ...[
                    context.sizedBoxHeightMicro,
                     BigCardList(scrollController:item),
                  ]
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BigCardList extends GetView<HomeLogic> {
  final ScrollController scrollController;
  const BigCardList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => InkWell(
      onTap: () {
        Get.to(()=>const SingleCaseView());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          context.sizedBoxHeightMicro,
          ListView.builder(
            controller: scrollController, // 👈 assign scrollController here
            padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            // itemExtent: 100,
            itemBuilder: (context, index) =>
             CaseCardWidget(
              width: Get.width*0.8,
            ),

          ).size(
            height: Get.height * 0.36,

          ),
          // Text("${scrollController.position.maxScrollExtent??''}")
        ],
      ).paddingAll(8),
    ),);
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
      itemBuilder: (context, index) =>  InkWell(onTap: () {
        Get.to(()=>const ListOfCaseView());
      },child: const CategoryItemCardForList().marginAll(3)),
    ).size(
      height: Get.height * 0.2,
    );
  }
}
