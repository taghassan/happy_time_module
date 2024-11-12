import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../../../generated/assets.dart';
import '../values/colors.dart';


class EmptyBoxWidget extends StatelessWidget {
 final Function()? onRetry;
  const EmptyBoxWidget({super.key,this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.iconsEmptybox,width:Get.width*0.8,height: Get.height*0.2,color: primaryColor,),
          context.sizedBoxHeightExtraSmall,
          // Lottie.asset(Assets.lottiefilesAdedPreloader),
          context.sizedBoxHeightExtraSmall,
          if(onRetry!=null)
          TextButton(onPressed: onRetry, child: Text("retry".tr))
        ],
      ),
    );
  }
}
