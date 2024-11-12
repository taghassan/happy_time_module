import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/values/colors.dart';



class CaseCardWidget extends StatelessWidget {
  final double? width;
  const CaseCardWidget({super.key,this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: lightColor,
// borderRadius: const BorderRadius.all(Radius.circular(10))
      ).withCircularBorderRadius(radius: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: Get.width * 0.2,
                height: Get.height * 0.1,
                decoration: const BoxDecoration()
                    .withColor(Colors.white)
                    .withCircularBorderRadius(radius: 50)
                    .withImage(image: NetworkImage(AppConstants.placeHolderUrl)),
              ),
              context.sizedBoxWidthMicro,
              context.sizedBoxWidthMicro,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "What is Lorem Ipsum?",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  context.sizedBoxHeightMicro,
                  Text(
                    "What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum Ipsum What is Lorem Ipsum What is Lorem Ipsum ?",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    textAlign: TextAlign.start,
                  ).size(width: Get.width * 0.4),
                ],
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Total 2500",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
              ),

              Text(
                "${(300 / 2500 * 100).round()}%",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
              ),

              Text(
                "Collected 300",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Slider(
            value: 300,
            onChanged: (value) {},
            max: 2500,
            activeColor: Colors.green,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: Get.width * 0.2,
                height: 40,
                decoration: const BoxDecoration()
                    .withColor(Colors.black54)
                    .withCircularBorderRadius(radius: 10),
              ),

              Container(
                width: Get.width * 0.2,
                height: 40,
                decoration: const BoxDecoration()
                    .withColor(Colors.black54)
                    .withCircularBorderRadius(radius: 10),
              ),

              Container(
                width: Get.width * 0.2,
                height: 40,
                decoration: const BoxDecoration()
                    .withColor(Colors.black54)
                    .withCircularBorderRadius(radius: 10),
              ),
            ],
          )
        ],
      ).paddingAll(8),
    );
  }
}
