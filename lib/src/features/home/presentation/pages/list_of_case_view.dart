import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/features/home/presentation/pages/single_case_view.dart';
import 'package:happy_time_module/src/features/home/presentation/widgets/small_case_card_widget.dart';

class ListOfCaseView extends StatelessWidget {
  const ListOfCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Title",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          context.sizedBoxHeightMicro,
          Expanded(
              child: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: Get.width * 0.5,
                mainAxisExtent: Get.height * 0.45),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Get.to(() => const SingleCaseView());
                  },
                  child: const SmallCaseCardWidget());
            },
          ))
        ],
      ),
    );
  }
}
