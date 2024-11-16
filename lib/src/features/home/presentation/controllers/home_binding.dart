import 'package:get/get.dart';

import 'home_logic.dart';

class HappyTimeHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>HappyTimeHomeLogic());
  }
}
