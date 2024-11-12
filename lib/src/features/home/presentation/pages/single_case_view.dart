import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:happy_time_module/src/core/constants/app_constants.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/values/colors.dart';
import 'package:happy_time_module/src/core/widgets/components/plus_text_field.dart';
import 'package:happy_time_module/src/core/widgets/primary_button.dart';
import 'package:happy_time_module/src/features/home/presentation/controllers/home_logic.dart';
TextEditingController c=TextEditingController();
class _PieData {
  _PieData(this.xData, this.yData);

  final String xData;
  final num yData;
  String? text;
}

class SingleCaseView extends GetView<HomeLogic> {
  const SingleCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 30,
              options: CarouselOptions(
                height: Get.height * 0.3,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                enlargeFactor: 0.15,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder: (context, index, realIndex) => Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: Get.width,
                    height: Get.height * 0.3,
                    decoration: const BoxDecoration().withImage(
                        image: NetworkImage(AppConstants.placeHolderUrl)),
                    child: Center(
                      child: Text("data $index"),
                    ),
                  );
                },
              ),
            ),
            context.sizedBoxHeightExtraSmall,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "What is Lorem Ipsum?",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
                context.sizedBoxHeightMicro,
                Text(
                  "What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum What is Lorem Ipsum Ipsum What is Lorem Ipsum What is Lorem Ipsum ?",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.start,
                ).size(width: Get.width * 0.9),
              ],
            ),
            Center(
                child: Container(
                    width: Get.width,
                    height: Get.height * 0.35,
                    decoration: const BoxDecoration(),
                    child: Center(
                        child: SfCircularChart(
                            title:
                                const ChartTitle(text: 'Sales by sales person'),
                            legend: const Legend(isVisible: true),
                            series: <PieSeries<_PieData, String>>[
                          PieSeries<_PieData, String>(
                              explode: true,
                              explodeIndex: 0,
                              dataSource: [
                                _PieData("collected", 300),
                                _PieData("remaining", 300),
                              ],
                              xValueMapper: (_PieData data, _) => data.xData,
                              yValueMapper: (_PieData data, _) => data.yData,
                              dataLabelMapper: (_PieData data, _) => data.text,
                              dataLabelSettings:
                                  const DataLabelSettings(isVisible: true)),
                        ])))),
            context.sizedBoxHeightExtraSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.25,
                  height: 40,
                  decoration: const BoxDecoration()
                      .withColor(Colors.blueAccent)
                      .withCircularBorderRadius(radius: 50),
                ),
                Container(
                  width: Get.width * 0.25,
                  height: 40,
                  decoration: const BoxDecoration()
                      .withColor(Colors.lightBlue)
                      .withCircularBorderRadius(radius: 50),
                ),
                Container(
                  width: Get.width * 0.25,
                  height: 40,
                  decoration: const BoxDecoration()
                      .withColor(Colors.orange)
                      .withCircularBorderRadius(radius: 50),
                ),
              ],
            ),
            context.sizedBoxHeightExtraSmall,

            PrimaryButton(text: "donate", onPressed: () {
              Get.bottomSheet(
              Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlusTextField(
                      inputController: c,
                      label: 'amount',
                      hintText: 'amount',
                      accentColor: Colors.white60,
                      primaryColor:Colors.black12,
                      keyboardType: TextInputType.number,
                      readOnly: false,
                      enabled: true,
                    ).paddingSymmetric(horizontal: 25),
                    context.sizedBoxHeightExtraSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: Get.width * 0.25,
                          height: 40,
                          decoration: const BoxDecoration()
                              .withColor(Colors.brown)
                              .withCircularBorderRadius(radius: 10),
                        ),
                        Container(
                          width: Get.width * 0.25,
                          height: 40,
                          decoration: const BoxDecoration()
                              .withColor(shareButtonColor)
                              .withCircularBorderRadius(radius: 10),
                        ),
                        Container(
                          width: Get.width * 0.25,
                          height: 40,
                          decoration: const BoxDecoration()
                              .withColor(orange)
                              .withCircularBorderRadius(radius: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              )
              ,isScrollControlled: false);
            },).size(width: Get.width*0.8)
          ],
        ),
      ),
    );
  }
}
