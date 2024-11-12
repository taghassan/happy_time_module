import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:happy_time_module/src/core/values/colors.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

class CategoryItemCardForList extends StatelessWidget {
  const CategoryItemCardForList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: Get.height * 0.095,
              decoration: BoxDecoration(color: primaryColor)
                  .withCircularBorderRadius(
                    radius: 10,
                    fullBorderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  )
                  .withImage(image: NetworkImage(AppConstants.placeHolderUrl)),
            ).applyShimmer(enable: false),
            Text(
              "What is Lorem Ipsum?",
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Container(
              height: Get.height * 0.043,
              decoration: BoxDecoration(color: primaryColor)
                  .withCircularBorderRadius(
                    radius: 10,
                    fullBorderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  )
                  .withColor(Colors.redAccent),
              child: Text(
                "What is Lorem Ipsum?",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ).applyShimmer(enable: false),
          ],
        ),
      ],
    );
  }
}
