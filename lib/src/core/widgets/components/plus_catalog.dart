import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../generated/assets.dart';
import 'plus_animated_loading_button.dart';
import 'plus_credit_card.dart';
import 'plus_curved_bottom_nav_bar.dart';
import 'plus_featured_card.dart';
import 'plus_gradient_button.dart';
import 'plus_header_with_trailing_action.dart';
import 'plus_horizontal_card.dart';
import 'plus_info_banner.dart';
import 'plus_like_list_tile.dart';
import 'plus_outline_button.dart';
import 'plus_profile_row.dart';
import 'plus_promo_card.dart';
import 'plus_recipe_list_item.dart';
import 'plus_row_picker.dart';
import 'plus_search_bar.dart';
import 'plus_slider.dart';
import 'plus_square_card.dart';
import 'plus_text_field.dart';
import 'plus_top_bar.dart';

class PlusCatalog extends StatefulWidget {
  const PlusCatalog({super.key});

  @override
  State<PlusCatalog> createState() => _PlusCatalogState();
}

class _PlusCatalogState extends State<PlusCatalog> {
  final String imageUrl =
      "https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg";

  double currenvalue = 0.0;
  var f;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const PlusCurvedBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async {
          if(f!=null){
          for(var x=0;x<100;x++){
            await Future.delayed(const Duration(seconds: 3));
            setState(() {
              currenvalue=double.parse(x.toString());
            });
            f(currenvalue);
          }
          }else{
            if (kDebugMode) {
              print("not yes");
            }
          }
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //***************** created by TajEldeen *****************//
            // App Top Bar /*Welcome User name / Page Title and etc ...
            //********************************************************//
            PlusSlider(
              min: 0,
              max: 100,
              divisions: 1,
              initialValue: currenvalue,
              showMinMaxText: true,
              divisionColor: Colors.red,
              accentColor: Colors.green,
              primaryColor: Colors.amber,
              onChange: (p0) {},
              updateCurrentValue: (updateState) {
                if (mounted) {
                  Future.delayed(const Duration(seconds: 1),() {
                    setState(
                          () => f = updateState,
                    );
                  },);
                }
              },
            ),
            PlusTopBar(
              title: "Welcome",
              upperTitle: "upper Title",
              onTapMenu: () {},
            ),
            PlusSearchInput(
                searchController: TextEditingController(),
                hintText: "Search"),
            const PlusTextField(),
            const PlusDivider(),
            PlusSquareCard(
              text: "text",
              imageUrl: imageUrl,
              subtitle: "subtitle",
              onPressed: () {},
            ),
            const PlusDivider(),
            PlusRowPicker(
              title: "title",
              onChangeValue: (p0) {},
            ),
            const PlusDivider(),
            PlusRecipeItemMallika(
                dishImage: imageUrl, title: "title", subtitle: "subtitle"),
            const PlusDivider(),
            const PlusPromoCard(backgroundPath: "",),
            const PlusDivider(),
            const PlusProfileRow(
              subtitle: "",
              title: "",
              imagePath: Assets.iconsIcAvatar,
            ),
            const PlusDivider(),
            PlusOutlineButton(
              text: "text",
              onPressed: () {},
            ),
            const PlusDivider(),
            PlusGradientButton(text: "text", onPressed: () {}),
            const PlusDivider(),
            PlusLikeListTile(
                title: "title",
                likes: "90",
                subtitle: "subtitle",
                imgUrl: imageUrl),

            PlusInfoBanner(
              icon: const Icon(Icons.access_alarm_sharp),
              actions: [TextButton(onPressed: () {}, child: const Text("data"))],
              text: "text",
            ),
            const PlusDivider(),
            PlusHorizontalCard(
                text: "text",
                imageUrl: imageUrl,
                subtitle: "subtitle",
                onPressed: () {}),
            const PlusDivider(),
            PlusHeaderWithTrailingAction(
              text: "text",
              icon: const Icon(Icons.account_balance_wallet_outlined),
              iconOnPressed: () {},
            ),
            const PlusDivider(),
            PlusFeaturedCard(
                imgUrl: imageUrl,
                title: "title",
                color: Colors.purple,
                onTap: () {}),
            const PlusDivider(),
            PlusCreditCard(
                onTopRightButtonClicked: () {},
                cardIcon: const Icon(Icons.account_balance)),
            const PlusDivider(),
            LoadingAnimatedButton(child: const Text(""), onTap: () {}),
            const PlusDivider(),
          ],
        ).paddingSymmetric(vertical: 30, horizontal: 15),
      ),
    );
  }
}

class PlusDivider extends StatelessWidget {
  const PlusDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
      child: Divider(),
    );
  }
}
