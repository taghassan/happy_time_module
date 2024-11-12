import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlusResponsiveLayout extends StatelessWidget {
  final Widget? mobileLayout, webLayout, desktopLayout, tabletLayout;

  const PlusResponsiveLayout(
      {super.key,
         this.desktopLayout,
         this.webLayout,
        required this.mobileLayout,
         this.tabletLayout});

  @override
  Widget build(BuildContext context) {
    return context.responsiveValue(
        desktop: desktopLayout ?? mobileLayout,
        mobile: mobileLayout ?? const SizedBox.shrink(),
        tablet: tabletLayout ?? mobileLayout,
        watch: mobileLayout);
  }
}
