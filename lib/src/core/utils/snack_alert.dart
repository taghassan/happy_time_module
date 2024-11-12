import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

class SnackAlert {
  static showError({required String title, required String message}) {
    toastification.show(
        title: Text(title.tr),
        description: Text(message.tr),
        autoCloseDuration: const Duration(seconds: 3),
        style: ToastificationStyle.flatColored,
        type: ToastificationType.error
    );
    // Get.snackbar(
    //   title.tr,
    //   message.tr,
    //   backgroundColor: Colors.red,
    //   colorText: Colors.white,
    // );
  }

  static showSuccess({required String title, required String message}) {
    toastification.show(
      title: Text(title.tr),
      description: Text(message.tr),
      autoCloseDuration: const Duration(seconds: 3),
      style: ToastificationStyle.flatColored,
      type: ToastificationType.success
    );
    // Get.snackbar(
    //   title.tr,
    //   message.tr,
    //   backgroundColor: Colors.green,
    //   colorText: Colors.white,
    // );
  }

  static showInfo({required String title, required String message}) {
    toastification.show(
        title: Text(title.tr),
        description: Text(message.tr),
        autoCloseDuration: const Duration(seconds: 3),
        style: ToastificationStyle.flatColored,
        type: ToastificationType.info
    );
    // Get.snackbar(title, message,
    //     backgroundColor: Colors.blueAccent, colorText: Colors.white);
  }

  static showAlertWithAction(
      {String title = "",
      required String message,
      Function()? onPressed,
      Function()? onMidButtonPressed,
      String buttonText = "ok",
      String midButtonText = "",
      String cancelButtonText = "Cancel"
      }) {
    Get.showSnackbar(
      GetSnackBar(
        title: title,
        message: message,
        backgroundColor: Colors.green,
        titleText: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        mainButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: onPressed,
              child: Text(buttonText,style: const TextStyle(color: Colors.white),),
            ),
            if(onMidButtonPressed!=null)
            TextButton(
              onPressed: onMidButtonPressed,
              child:  Text(midButtonText,style: const TextStyle(color: Colors.white),),
            ),
            TextButton(
              onPressed: ()=>Get.back(),
              child:  Text(cancelButtonText,style: const TextStyle(color: Colors.white),),
            ),

          ],
        ),onTap:(value)=> onPressed,
        isDismissible: false,
        overlayColor: Colors.red,
      ),
    );
    return;
  }

  static showCustomSnackBar(String message, {bool isError = true,bool isInfo=false,int durationInSeconds=1}) {
    if (message.isNotEmpty) {
      toastification.show(
          title: const Text(''),
          description: Text(message.tr),
          autoCloseDuration: const Duration(seconds: 5),
          style: ToastificationStyle.flatColored,
          type: isError?  ToastificationType.error: ToastificationType.success,
        animationDuration: Duration(seconds: durationInSeconds),

      );
      // Get.showSnackbar(GetSnackBar(
      //   backgroundColor: isError ? Colors.red : isInfo?Colors.blue :  Colors.green,
      //   message: message.tr,
      //   // maxWidth: Dimensions.WEB_MAX_WIDTH,
      //   duration:  Duration(seconds: durationInSeconds),
      //   snackStyle: SnackStyle.FLOATING,
      //   // margin: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
      //   // borderRadius: Dimensions.RADIUS_SMALL,
      //   isDismissible: true,
      //   dismissDirection: DismissDirection.horizontal,
      // ));
    }
  }
}
