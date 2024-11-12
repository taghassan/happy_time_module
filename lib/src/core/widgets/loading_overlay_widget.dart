import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../../../generated/assets.dart';


class LoadingOverlayWidget extends StatelessWidget {
  final String? loadingMessage;
  final String? progress;
  const LoadingOverlayWidget({super.key,this.loadingMessage,this.progress});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesLogo,color: Colors.transparent,),
          context.sizedBoxHeightDefault,
          //TODO enable this
          // Lottie.asset(Assets.lottiefilesAdedPreloader,width: Get.width*0.4),
          context.sizedBoxHeightDefault,
          Text((loadingMessage??'loading').tr,style: GoogleFonts.tajawal(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600,),),
          Text((progress??'').tr,style: GoogleFonts.tajawal(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600,),)
        ],
      ),
    );
  }
}
