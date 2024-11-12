import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

TextStyle poppinsBold = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsBold',
);
TextStyle poppinsBoldItalic = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsBoldItalic',
);

TextStyle? homeScreenSmallButtons=Theme.of(Get.context!)
    .textTheme
    .labelSmall
    ?.copyWith(
    color: Colors.white,
    fontSize: 7.0,
    fontWeight: FontWeight.w700);

TextStyle poppinsExtraBold = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsExtraBold',
);
TextStyle poppinsExtraBoldItalic = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsExtraBoldItalic',
);
TextStyle poppinsMedium = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsMedium',
);
TextStyle poppinsMediumItalic = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsMediumItalic',
);
TextStyle poppinsRegular = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsRegular',
);
TextStyle poppinsSemiBold = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsSemiBold',
);
TextStyle poppinsSemiBoldItalic = TextStyle(
  color: lightColor,
  fontFamily: 'PoppinsSemiBoldItalic',
);