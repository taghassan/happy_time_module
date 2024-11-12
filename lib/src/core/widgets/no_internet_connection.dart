import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/generated/assets.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        context.sizedBoxWidthFill,
        Image.asset(Assets.iconsNoWifi,width:150,height: 150,),
        context.sizedBoxHeightExtraSmall,
        Text("no_internet_connection".tr)
      ],
    );
  }
}
