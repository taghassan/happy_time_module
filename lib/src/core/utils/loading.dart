
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';

import '../widgets/loading_overlay_widget.dart';

mixin LoaderOverlayMixin {
  bool get isLoadingVisible {
    if (Get.context == null) return false;

    return Get.context!.loaderOverlay.visible;
  }

  showLoadingIndicator(bool status){
    AppLogger.it.logInfo("Loading Indicator show $status");
    if(status==true){
      showLoading();
    }
    if(status==false){
      hideLoading();
    }
  }

  showLoading() {

    if (Get.context != null) {
      Get.context!.loaderOverlay.show(
        widgetBuilder: (progress) {
          return LoadingOverlayWidget(
            progress: progress != null ? progress as String : null,
          );
        },
      );
    }
  }

  hideLoading() {
    if (Get.context != null) {
      Get.context!.loaderOverlay.hide();
    }
  }

  addProgressToLoadingIndicator({String? progress}) {
    if (Get.context != null) {
      Get.context!.loaderOverlay.progress(progress ?? '');
    }
  }
}
