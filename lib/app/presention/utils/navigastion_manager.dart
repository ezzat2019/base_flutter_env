
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
GlobalKey<NavigatorState> navK=GlobalKey<NavigatorState>();
BuildContext? myContext=navK.currentContext;
class NavigationManager {
  static goto(dynamic screenName){
    Navigator.of(myContext!).push(MaterialPageRoute(builder: (context) => screenName,));
  }
  static gotoAndKill(dynamic screenName){
    Navigator.of(myContext!).pushReplacement(MaterialPageRoute(builder: (context) => screenName,));
  }
  static gotoAndKillAll(dynamic screenName){
    Navigator.of(myContext!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screenName,)
    , (route) => false);
  }

  static gotoName(String screenName,{args,BuildContext? context}){
    if(context!=null)
      {
        Navigator.of(context).pushNamed(screenName,arguments: args);
      }else
        {
          Navigator.of(myContext!).pushNamed(screenName,arguments: args);
        }

  }
  static gotoAndKillName(String screenName,{args}){
    Navigator.of(myContext!).pushReplacementNamed(screenName,arguments: args);
  }
  static gotoAndKillAllName(String screenName){
    Navigator.of(myContext!).pushNamedAndRemoveUntil(screenName, (Route<dynamic> route) => false);
  }

  static back({dynamic  res}){
    Navigator.of(myContext!).pop(res);
  }
}