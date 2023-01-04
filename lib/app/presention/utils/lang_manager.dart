import 'dart:ui';

import 'package:flutter/foundation.dart';

import '../../../generated/l10n.dart';
import '../../data/source/cashe/cashe_service_imp.dart';
import 'constant_manager.dart';
import 'di_manager.dart';
import 'network_helper.dart';

class LangManager extends ChangeNotifier{

 CasheServiceImp casheService=DIManager.getIt.get<CasheServiceImp>();
 TextDirection? _textDirection;

 TextDirection get textDirection {
   if (currentLanguage==ConstantManager.LANGUAGE_ARABIC) {
     return TextDirection.rtl;
   }  else{
     return TextDirection.ltr;

   }

 }

 set textDirection(TextDirection value) {
   _textDirection = value;
 }
 bool isSetLanguage(){
   return casheService.sharedPreferences!.containsKey(ConstantManager.LANGUAGE_KEY);
 }
 String  get currentLanguage {
   if (casheService.sharedPreferences!.containsKey(ConstantManager.LANGUAGE_KEY)) {
     String lang=casheService.sharedPreferences!.getString(ConstantManager.LANGUAGE_KEY)??ConstantManager.LANGUAGE_ARABIC;
     return lang;
   }  else
   {
     return ConstantManager.LANGUAGE_ARABIC;
   }
 }

 changeCurrentLanguage(String lang)
 {
   casheService.sharedPreferences!.setString(ConstantManager.LANGUAGE_KEY, lang);
   S.load(Locale(lang));
   if(lang==ConstantManager.LANGUAGE_ARABIC)
   {
     textDirection=TextDirection.rtl;
   }else
   {
     textDirection=TextDirection.ltr;
   }
   NetworkHelper.MyHeaders={
     "accept":"*/*",
     "lang":getLang()
   };
   notifyListeners();
 }
 static String getLang() {
   CasheServiceImp casheServiceImp = DIManager.getIt.get<CasheServiceImp>();
   if (casheServiceImp.sharedPreferences!.containsKey(ConstantManager.LANGUAGE_KEY)) {
     if (casheServiceImp.sharedPreferences!.getString(ConstantManager.LANGUAGE_KEY) ==
         ConstantManager.LANGUAGE_ARABIC) {
       return "ar";
     } else {
       return "en";
     }
   } else
     return "en";
 }
}