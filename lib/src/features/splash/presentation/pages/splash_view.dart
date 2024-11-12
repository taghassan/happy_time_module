import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_logic.dart';

class SplashPage extends GetView<SplashLogic> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Container(),
      ),
    );
  }
}
