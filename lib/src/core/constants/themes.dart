import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/colors.dart';

class AppThemes {
get th =>{};

  static ThemeData darkTheme(BuildContext context){
   return ThemeData.dark(
      useMaterial3: true,
    );
  }
  static ThemeData lightTheme(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: colorVeryDarkPrimary),
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          titleTextStyle: GoogleFonts.tajawal(fontSize: 20,color: Colors.white)
         ),
      useMaterial3: true,
      textTheme: GoogleFonts.tajawalTextTheme(textTheme),
    );
  }
}