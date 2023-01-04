import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/source/cashe/cashe_service_imp.dart';
import 'constant_manager.dart';
import 'di_manager.dart';
import 'lang_manager.dart';
import 'navigastion_manager.dart';

class NetworkHelper{
  static final BASE_URL="https://invapi.atc-servers.com/api/";


  /// urls
  static var MyHeaders = {'Content-Type': 'application/json-patch+json',"accept": "*/*", "lang": LangManager.getLang()};
  static var MyHeadersFile = {'Content-Type': 'multipart/form-data',"accept": "*/*", "lang": LangManager.getLang(),
  };
  static String get tokken{
    CasheServiceImp casheServiceImp = DIManager.getIt.get<CasheServiceImp>();
    if (casheServiceImp.sharedPreferences!.containsKey(ConstantManager.TOKEN_KEY)) {
      return casheServiceImp.sharedPreferences!.getString(ConstantManager.TOKEN_KEY)??"";
    } else
      return "";
  }
 static showSnackBar(String msg,bool success){
    var snackBar = SnackBar(

      elevation: 0,
      behavior: SnackBarBehavior.fixed,
      backgroundColor: Colors.transparent,
      duration: Duration(milliseconds: 1000),
      content: AwesomeSnackbarContent(
        title: '',
        message:
        msg,
        contentType: success?ContentType.success:ContentType.failure,
      ),
    );
    ScaffoldMessenger.of(myContext!)
        .showSnackBar(snackBar);
  }
  static showLoader(){
    showDialog<void>(
      context: myContext!,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: Colors.black45,
          content:Center(child: CircularProgressIndicator())
          ,
        );
      },
    );
  }
}