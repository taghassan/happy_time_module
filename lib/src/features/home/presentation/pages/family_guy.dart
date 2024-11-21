import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide WidgetPaddingX;
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
import 'package:happy_time_module/webview_widget.dart';

class FamilyGuyPage extends GetView<HappyTimeHomeLogic> {
  const FamilyGuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: controller.obx((state) {

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 3,crossAxisSpacing: 3,childAspectRatio: 0.5),
          itemCount: controller.selectedTheMovieDbSeason.length,
          itemBuilder: (context, index) {
          var season =controller.selectedTheMovieDbSeason[index];
            return InkWell(child:

            FamilyGuyImageBuilder(url: "${season.image}",width: Get.width,height: Get.height*0.1,),onTap: () async{

              try{

                controller.showLoading();
                await  controller.fetchEpisodeList(url: "${season.urlPath}");
                controller.hideLoading();
                Get.to(()=>const FamilyGuyPageEpisode());
              }catch(e){
                controller.hideLoading();
              }

            },);

        },);
      },)
    );
  }
}

class FamilyGuyPageEpisode extends GetView<HappyTimeHomeLogic> {
  const FamilyGuyPageEpisode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: controller.obx((state) {

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 3,mainAxisSpacing: 3,childAspectRatio: 0.7),
            itemCount: controller.selectedTheMovieDbEpisodes.length,
            itemBuilder: (context, index) {
              var episode =controller.selectedTheMovieDbEpisodes[index];

              return InkWell(
                onTap: () async{

                  Get.to(()=> WebViewPage(url: "https://vidlink.pro/tv/${controller.theMovieDBId}/${episode.season}/${episode.episode}", redirectPrevent: 'vidlink'));

                },
                child: FamilyGuyImageBuilder(url: "${episode.image}",width: Get.width*0.15,height: Get.height*0.1,),
              );
              return InkWell(child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.black54, width: 0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text("${episode.name}"),
                subtitle: const Text(""),
                trailing: FamilyGuyImageBuilder(url: "${episode.image}",width: Get.width*0.15,height: Get.height*0.1,),
              ).paddingAll(5),onTap: () async{

              Get.to(()=> WebViewPage(url: "https://vidlink.pro/tv/${controller.theMovieDBId}/${episode.season}/${episode.episode}", redirectPrevent: 'vidlink'));

              },);

            },);
        },)
    );
  }
}

class FamilyGuyImageBuilder extends StatelessWidget {
  final String url;
  final double? width,height;
  const FamilyGuyImageBuilder({super.key,required this.url,this.height,this.width});

  @override
  Widget build(BuildContext context) {
 
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              ),
        ),
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: Colors.white,
        child: const Center(child: CircularProgressIndicator()),
      ).applyShimmer(),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        color: Colors.grey,
      )//.applyShimmer(baseColor: Colors.red,highlightColor: Colors.white30)
    );
  }
}

