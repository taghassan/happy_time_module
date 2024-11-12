import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../values/colors.dart';

class ContentLoadingWidget extends StatelessWidget {
  const ContentLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:  Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for(int i=0;i<=8;i++)
          ...[
            Card(
                child: SizedBox(

                  height: Get.height*0.13,
                  width: Get.width,

                )
            ).applyShimmer(baseColor: primaryColor,highlightColor: lightColor,),
            context.sizedBoxHeightMicro,

          ]
      ],
    ),);
  }
}
