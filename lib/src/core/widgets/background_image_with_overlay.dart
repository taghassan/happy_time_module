import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/assets.dart';

class BackgroundImageWithOverlayWidget extends StatelessWidget {
  final Widget? child;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final bool? scrollable;
  final bool extendBodyBehindAppBar;
  final bool resizeToAvoidBottomInset;
  final AppBar? appBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const BackgroundImageWithOverlayWidget({super.key,this.floatingActionButtonLocation,this.child,this.bottomNavigationBar,this.floatingActionButton,this.scrollable=true,this.appBar,this.extendBodyBehindAppBar=false,  this.resizeToAvoidBottomInset=true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : resizeToAvoidBottomInset,

        // extendBodyBehindAppBar: extendBodyBehindAppBar,
        appBar: appBar,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        body: Stack(
          children: [
            Container(
              height: Get.height ,
              decoration:  const BoxDecoration(
                image:DecorationImage(
                  alignment: Alignment(0, 1),
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesBackground,),
                ),
              ),
            ),
            Container( color: Colors.black.withOpacity(0.1),width: Get.width,height: Get.height,),
            child??const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
