import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class ThemeManager{
 static ThemeData getAppLightTheme(){
    return ThemeData(
        primarySwatch: ColorManager().PRIMARY_MAIN,
        canvasColor: Colors.white,
        fontFamily: FontFamilyManager.TAJAWAL,
      appBarTheme: AppBarTheme(
        titleTextStyle:TextStyle(fontSize: FontSizeManager.s15,
        fontWeight: FontWeightManager.MEDIUM)
      )
    );
  }
 static ThemeData getAppDarkTheme(){
    return ThemeData(
        primarySwatch: ColorManager().PRIMARY_MAIN_DARK,
        canvasColor: Colors.black,
        fontFamily: FontFamilyManager.TAJAWAL
    );
  }
}