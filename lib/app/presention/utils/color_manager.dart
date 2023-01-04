import 'dart:ui';

import 'package:flutter/material.dart';

class ColorManager{
   /// light
   MaterialColor get PRIMARY_MAIN=>MaterialColor(0xff655398,_getSwatch(PRIMARY_LIGHT));
   /// dark
   MaterialColor get PRIMARY_MAIN_DARK=>MaterialColor(0xff9AAC67,_getSwatch(PRIMARY_DARK));
   static final Color PRIMARY_LIGHT=Color(0xff655398);
   static final Color PRIMARY_DARK=Color(0xff9AAC67);
   static final Color ORANGE=Color(0xffE58241);
   static final Color FONT_BLACK=Color(0xff707070);
   static final Color FONT_BLACK2=Color(0xff121212);
   static final Color FONT_GRAY=Color(0xff999999);
   static final Color BACKGROUND_GRAY=Color(0xffEEEEEE);
   static final Color GRAY_LIGHT=Color(0xffF7F7F7);
   static final Color GRAY_BORDER=Color(0xffCCCCCC);
   static final Color GRAY_BORDER_DETAILS=Color(0xffEEEEEE);
   static final Color GRAY_BORDER_DIVIDER=Color(0xffDDDDDD);

   Map<int, Color> _getSwatch(Color color) {
      final hslColor = HSLColor.fromColor(color);
      final lightness = hslColor.lightness;

      /// if [500] is the default color, there are at LEAST five
      /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
      /// divisor of 5 would mean [50] is a lightness of 1.0 or
      /// a color of #ffffff. A value of six would be near white
      /// but not quite.
      final lowDivisor = 6;

      /// if [500] is the default color, there are at LEAST four
      /// steps above [500]. A divisor of 4 would mean [900] is
      /// a lightness of 0.0 or color of #000000
      final highDivisor = 5;

      final lowStep = (1.0 - lightness) / lowDivisor;
      final highStep = lightness / highDivisor;

      return {
         50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
         100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
         200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
         300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
         400: (hslColor.withLightness(lightness + lowStep)).toColor(),
         500: (hslColor.withLightness(lightness)).toColor(),
         600: (hslColor.withLightness(lightness - highStep)).toColor(),
         700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
         800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
         900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
      };
   }
}
