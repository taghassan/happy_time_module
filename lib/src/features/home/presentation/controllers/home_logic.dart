import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/controller/base_controller.dart';

import 'home_state.dart';

class HomeLogic extends BaseController with StateMixin<HomeState> {
  List<ScrollController> scrollController = [];
  int tempItemCount = 10;

  @override
  void onInit() async {
    scrollController = List.generate(
      20,
      (index) => ScrollController(),
    ).toList();

    showLoadingIndicator(true);

    await Future.delayed(
      const Duration(seconds: 3),
      () {
        showLoadingIndicator(false);
      },
    );

    addControllerListener();
    addControllerAutoScroll();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onClose() {
    for (ScrollController controller in scrollController) {
      controller.dispose();
    }
    super.onClose();
  }

  // 👈 create animation in initState
  addControllerAutoScroll() {
    for (ScrollController controller in scrollController) {
      startScrolling(controller:controller);
    }
  }

  //👉 If you want infinite scrolling use the following code
  addControllerListener() {
    for (ScrollController controller in scrollController) {
      controller.addListener(
        () {
          if (controller.position.pixels ==
              controller.position.maxScrollExtent) {
            // Scroll has reached the end, reset the position to the beginning.
            controller.jumpTo(controller.position.minScrollExtent);
            startScrolling(controller:controller);
          }
        },
      );
    }
  }

  void startScrolling({required ScrollController controller}) {
    Future.delayed(const Duration(seconds: 1), () {
      controller.animateTo(controller.position.maxScrollExtent,
          duration: Duration(seconds: tempItemCount * 10),
          curve: Curves.linear);


      Future.delayed(Duration.zero,() => update(),);
    });
  }
}
