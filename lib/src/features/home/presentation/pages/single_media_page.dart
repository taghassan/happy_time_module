import 'dart:ui';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/utils/logger_utils.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/src/shared/entities/MediaDetailsEntity.dart';
import 'package:happy_time_module/webview_widget.dart';

class SingleMediaPage extends GetView<HappyTimeHomeLogic> {
  const SingleMediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: controller.obx(
        (state) {
          MediaDetailsEntity? mediaDetailsEntity =
              controller.selectedMediaDetailsEntity;

          return Stack(
            children: [
              CachedNetworkImage(
                imageUrl: mediaDetailsEntity?.posterPath ??
                    "http://via.placeholder.com/200x150",
                imageBuilder: (context, imageProvider) => Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          // colorFilter: ColorFilter.
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                placeholder: (context, url) => Container(
                  width: Get.width,
                  height: Get.height * 0.6,
                  color: Colors.black87,
                ).applyShimmer(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),

              //
              CustomScrollView(slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: Get.height * 0.55,
                  // collapsedHeight: 100,
                  pinned: true,
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      (mediaDetailsEntity?.name ?? '').trim(),
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        shadows: <Shadow>[
                          const Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                              Colors.black.withOpacity(0.7),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        constraints:
                            BoxConstraints(minHeight: Get.height * 0.5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: double.tryParse(
                                          '${mediaDetailsEntity?.voteAverage ?? 0.0}') ??
                                      0.0,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  unratedColor: Colors.white,
                                  itemCount: 5,
                                  itemSize: 16.0,
                                  direction: Axis.horizontal,
                                ),
                                context.sizedBoxWidthMicro,
                                Text(
                                  '${mediaDetailsEntity?.voteAverage ?? 0.0}',
                                  style:
                                      controller.getTextStyle(fontSize: 14.0),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "المواسم ${mediaDetailsEntity?.seasons?.length ?? 0}",
                                  style:
                                      controller.getTextStyle(fontSize: 14.0),
                                ).toCardContainer(color: Colors.grey),
                                if (mediaDetailsEntity
                                        ?.genreslist?.firstOrNull !=
                                    null)
                                  Text(
                                    mediaDetailsEntity
                                            ?.genreslist?.firstOrNull ??
                                        '',
                                    style:
                                        controller.getTextStyle(fontSize: 14.0),
                                  ).toCardContainer(color: Colors.grey),
                                if (mediaDetailsEntity?.firstAirDate != null &&
                                    (mediaDetailsEntity?.firstAirDate ?? '')
                                            .stringToDateFormat() !=
                                        null)
                                  Text(
                                    (mediaDetailsEntity?.firstAirDate ?? '')
                                            .stringToDateFormat()
                                            ?.yearOnlyFormatToHuman() ??
                                        '',
                                    style:
                                        controller.getTextStyle(fontSize: 14.0),
                                  ).toCardContainer(color: Colors.grey)
                              ],
                            ),
                            const Divider(),
                            Text(
                              mediaDetailsEntity?.overview ?? '',
                              style: controller.getTextStyle(fontSize: 14.0),
                              textAlign: TextAlign.center,
                            ),
                            if (mediaDetailsEntity?.seasons != null &&
                                mediaDetailsEntity!.seasons!.isNotEmpty)
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: mediaDetailsEntity.seasons?.length,
                                itemBuilder: (context, index) => Text(
                                  "${mediaDetailsEntity.seasons?[index].name}",
                                  style:
                                      controller.getTextStyle(fontSize: 14.0),
                                ),
                              ),
                            if (mediaDetailsEntity?.mediaTypeEnum ==
                                MediaTypeEnum.movie) ...[
                              OutlinedButton(
                                  onPressed: () {
                                    Get.bottomSheet(Scaffold(
                                      body: ListView.builder(
                                        itemCount:
                                            (mediaDetailsEntity?.videos ?? [])
                                                .length,
                                        itemBuilder: (context, index) {
                                          var video =
                                              (mediaDetailsEntity?.videos ??
                                                  [])[index];
                                          return InkWell(
                                            onTap: () {

                                              Get.to(()=>WebViewPage(
                                                url: "${video.link}",
                                                redirectPrevent: video.link.extractFirstWord(),
                                              ));

                                            },
                                            child: Container(
                                              width: Get.width,
                                              padding: const EdgeInsets.all(10),
                                              child: Text("${video.server}"),
                                            ),
                                          );
                                        },
                                      ),
                                    ));
                                  },
                                  child: const Text("Play"))
                            ]
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ],
          );
        },
      ),
    );
  }
}
