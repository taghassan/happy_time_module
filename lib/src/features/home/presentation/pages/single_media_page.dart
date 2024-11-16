import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';

class SingleMediaPage extends GetView<HomeLogic> {
  const SingleMediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: controller.obx(
        (state) {
          return Stack(
            children: [
              CachedNetworkImage(
                imageUrl: controller.selectedAnimeShowResponse?.posterPath ??
                    "http://via.placeholder.com/200x150",
                imageBuilder: (context, imageProvider) => Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.amber,
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
                          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.contain,
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
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),

              //
              CustomScrollView(slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: Get.height*0.5,
                  // collapsedHeight: 100,
                  pinned: true,
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title:  Text((controller.selectedAnimeShowResponse?.name??'').trim(),style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),textAlign: TextAlign.start,),
                  ),
                ),

                SliverList(delegate: SliverChildListDelegate([

                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),

                ]))

              ]),
            ],
          );
        },
      ),
    );
  }
}
