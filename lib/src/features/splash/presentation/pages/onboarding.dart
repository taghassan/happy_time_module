import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/splash_logic.dart';

class Onboarding extends GetView<SplashLogic> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
            (state) => IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Fractional shares",
              body:
              "Instead of having to buy an entire share, invest any amount you want.",
              image: null,
              decoration: controller.pageDecoration,
            ),
            PageViewModel(
              title: "Fractional shares",
              body:
              "Instead of having to buy an entire share, invest any amount you want.",
              image: null,
              decoration: controller.pageDecoration,
            ),
            PageViewModel(
              title: "Fractional shares",
              body:
              "Instead of having to buy an entire share, invest any amount you want.",
              image: null,
              decoration: controller.pageDecoration,
            ),
            PageViewModel(
              title: "Fractional shares",
              body:
              "Instead of having to buy an entire share, invest any amount you want.",
              image: null,
              decoration: controller.pageDecoration,
            ),
          ],
          onDone: controller.handleOnboardingDone,
          onSkip:  controller.handleOnboardingSkip,
          showSkipButton: true,
          skipOrBackFlex: 0,
          nextFlex: 0,
          showBackButton: false,
          back: const Icon(Icons.arrow_back),
          skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: kIsWeb
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          showDoneButton: true,
          showNextButton: true,
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Colors.white,
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
          dotsContainerDecorator: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
