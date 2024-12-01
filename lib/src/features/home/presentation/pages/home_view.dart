import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/features/home/presentation/pages/the_movie_db_page.dart';

import '../controllers/home_logic.dart';

class HappyTimeHomePage extends GetView<HappyTimeHomeLogic> {
  const HappyTimeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: controller.obx((state) => controller.loadBannerWidget(bannerAd: controller.banner)??const SizedBox.shrink(),),

      body: controller.obx(
        (state) {
          return const TheMovieDbPage();
          if (controller.homeContentResponse == null) {
            return const Text("No Data");
          }

        },
      ),
    );
  }
}

