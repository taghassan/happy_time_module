import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:happy_time_module/src/core/values/colors.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/shared/models/responses/HomeContentResponseModel.dart';

class CasterItemCardForList extends StatelessWidget {
  final PopularCasters? caster;
  const CasterItemCardForList({super.key,this.caster});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: Get.height * 0.15,
              decoration: BoxDecoration(color: primaryColor)
                  .withCircularBorderRadius(
                    radius: 10,
                    fullBorderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  )
                  .withImage(image: NetworkImage(caster?.profilePath?? AppConstants.placeHolderUrl)),
            ).applyShimmer(enable: false),
            Text(
              caster?.name??'',
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ],
    );
  }
}
