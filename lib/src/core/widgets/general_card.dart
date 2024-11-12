import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../values/colors.dart';


class GeneralCardWidget extends StatelessWidget {
  final Widget? cardHeader, cardBody;
  final double? cardHeaderHeight;
  final Color? headerColor;

  const GeneralCardWidget(
      {super.key,
      this.cardHeader,
      this.cardBody,
      this.cardHeaderHeight,
      this.headerColor});

  @override
  Widget build(BuildContext context) {
    return
    Card(
      color: Colors.white.withOpacity(0.8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color:headerColor?? primaryColor)
      ),
      child: Column(
        children: [
          Container(
            height:cardHeaderHeight?? 40.0,
            color:headerColor?? primaryColor,
            child: cardHeader?.center(),
          ).size(width: Get.width*0.9),
          context.sizedBoxHeightExtraSmall,
          cardBody??const SizedBox.shrink()

        ],
      ).paddingAll(10.0),
    ).paddingAll(0.0);
  }
}
