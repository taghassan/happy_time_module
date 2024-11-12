import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:happy_time_module/src/core/storage/user_session_storage.dart';
import 'package:happy_time_module/src/routes/routes.dart';

import 'splash_state.dart';

class SplashLogic extends GetxController with StateMixin<SplashState> {
  var bodyStyle = const TextStyle(fontSize: 19.0);

  late PageDecoration pageDecoration;

  @override
  void onInit() {
    pageDecoration = PageDecoration(
      titleTextStyle:
          const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    if(Get.currentRoute==Routs.splashRoute){
      Future.delayed(const Duration(seconds: 3),() {
        Get.offAllNamed(Routs.homeRoute);
      },);
    }

    change(null, status: RxStatus.success());
    super.onInit();
  }

  void handleOnboardingDone(){
    UserSessionStorage.saveFirstOpen(false);
    Get.offAllNamed(Routs.homeRoute);
  }

  void handleOnboardingSkip() {
    UserSessionStorage.saveFirstOpen(false);
    Get.offAllNamed(Routs.homeRoute);
  }
}
