import 'dart:ui';

import 'package:base_flutter_env/presention/utils/font_manager.dart';

class StyleManager {
  static TextStyle? getTextStyle({TextStyle? textStyle}){
    if(textStyle==null)
      {
        return TextStyle(fontSize: FontSizeManager.s14);
      }
    else {
      return textStyle!;
    }
  }
}