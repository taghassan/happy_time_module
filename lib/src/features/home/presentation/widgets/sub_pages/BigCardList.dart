
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/caster_item_card_for_list.dart';

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
          (state) => Column(
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

               controller.openHomeSection(homeSection:homeSectionEnum,page: 1);

             }, icon:  const Icon(Icons.open_in_new))
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
                    onTap: () => controller.fetchDetails(item: item),
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
                    width: Get.width * 0.4,
                    height: Get.height * 0.3,
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
    );
  }
}

class EgyItemCard extends GetView<HappyTimeHomeLogic> {
  final item;
  const EgyItemCard({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: item.posterPath ??
          "http://via.placeholder.com/200x150",
      imageBuilder: (context, imageProvider) => InkWell(
        onTap: () => controller.fetchDetails(item: item),
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
        width: Get.width * 0.4,
        height: Get.height * 0.3,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ).applyShimmer(),
      errorWidget: (context, url, error) =>
      const Icon(Icons.error),
    );
  }
}


class SmallCardList extends GetView<HappyTimeHomeLogic>  {
  final ScrollController scrollController;

  const SmallCardList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,
        itemCount: (controller.homeContentResponse?.popularCasters??[]).length,
        itemExtent: 100,
        itemBuilder: (context, index) {
          var caster = (controller.homeContentResponse?.popularCasters??[])[index];
          return  CasterItemCardForList(
            caster:caster,
          ).marginAll(3);
        }
    ).size(
      height: Get.height * 0.2,
    ),);
  }
}