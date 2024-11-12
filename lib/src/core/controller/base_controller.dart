import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:loader_overlay/loader_overlay.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/loading.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/core/widgets/primary_button.dart';

import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../commundomain/entitties/based_api_result/api_result_model.dart';
import '../commundomain/entitties/based_api_result/api_result_state.dart';
import '../commundomain/entitties/based_api_result/error_result_model.dart';
import '../commundomain/usecases/base_params_usecase.dart';
import '../injectable/injection.dart';
import '../values/colors.dart';

class BaseController extends GetxController with LoaderOverlayMixin {
  bool canPop = false;

  bool isContentLoading = true;
  String? loadingMessage;

  Future<ApiResultState<Type>?> executeParamsUseCase<Type, Params>(
      {required BaseParamsUseCase<Type, Params> useCase, Params? query}) async {
    showLoadingIndicator(true);
    final ApiResultModel<Type> apiResult = await useCase(query);
    return apiResult.when(
      success: (Type data) {
        showLoadingIndicator(false);
        return ApiResultState<Type>.data(data: data);
      },
      failure: (ErrorResultModel errorResultEntity) {
        showLoadingIndicator(false);
        return ApiResultState<Type>.error(
          errorResultModel: ErrorResultModel(
              message: errorResultEntity.message,
              statusCode: errorResultEntity.statusCode,
              localModelId: errorResultEntity.localModelId,
              localModel: errorResultEntity.localModel),
        );
      },
    );
  }


  handleGlobalError(ErrorResultModel errorResultModel, {Function()? retry}) {
    // SnackAlert.showCustomSnackBar(errorResultModel.message ?? '',
    //     isError: true);
    Get.dialog(AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            errorResultModel.message ?? '',
            textAlign: TextAlign.center,
          ),
          // Text(
          //   errorResultModel.localModelId.toString(),
          //   textAlign: TextAlign.center,
          // ),
        ],
      ),
      actions: [
       if(retry != null)
        PrimaryButton(
          onPressed:  () {
                  Get.back();
                  retry();
                },
          text: "retry".tr,
          backgroundColor: redButton,
        ).size(width: Get.width * 0.9)
      ],
    ));
    return null;
  }

  String getRandomString(int length) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(
          rnd.nextInt(chars.length),
        ),
      ),
    );
  }

  bool listsEqual(List<String> list1, List<String> list2) {
    // Sort both lists and compare the sorted lists
    List<String> sortedList1 = List.from(list1)..sort();
    List<String> sortedList2 = List.from(list2)..sort();
    // AppLogger.it.logDebug("sortedList1 $sortedList1");
    // AppLogger.it.logDebug("sortedList2 $sortedList2");
    for (int i = 0; i < sortedList1.length; i++) {
      if (sortedList1[i] != sortedList2[i]) {
        return false;
      }
    }
    return true;
  }

  showContentLoading() {
    isContentLoading = true;
    update();
  }

  hideContentLoading() {
    isContentLoading = false;
    update();
  }

  //***************** created by TajEldeen *****************//
  /// تحديث نص الرسالة في شاشة ال (LOADING)
  //********************************************************//

  void setLoadingMessage(String? s) {
    loadingMessage = s;
    update();
  }

  @override
  onClose() {
    AppLogger.it.logDebug("$this onClose");
  }

  void onPopInvoked(bool didPop,result, {String? message}) async {
    AppLogger.it.logInfo("didPop $didPop result $result ");
//
    if (didPop == false) {
      await Text(
        (message ?? '').tr,
        textAlign: TextAlign.center,
      ).animatedDialog(
        onCancel: () {
          canPop = false;
          update();
          // Get.back();
          Future.delayed(
            Duration.zero,
            () => Get.back(),
          );
        },
        onConfirm: () {
          // canPop = true;
          update();

          // if(this is InspectionLogic){
          //   try{
          //     (this as InspectionLogic).clearAllInspectionForm();
          //   }catch (_){}
          // }

          Future.delayed(
            Duration.zero,
            () => Get.back(closeOverlays: true),
          );
        },
      );
    }
  }

  launcherAsPhone(String? phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '$phoneNumber',
    );
    await url_launcher.canLaunchUrl(launchUri).then((bool? result) async {
      await url_launcher.launchUrl(launchUri);
    });
  }


  showSnack({required String message}) =>
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        content: Text(message.tr),
      ));


  hideKeyBoard(){
    try{
      var keyboardVisible = MediaQuery.of(Get.context!).viewInsets.bottom != 0;
      if(keyboardVisible){
        FocusManager.instance.primaryFocus?.unfocus();
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        FocusScope.of(Get.context!).unfocus();

      }
    }catch(_){}
  }

}
