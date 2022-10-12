
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
GlobalKey<NavigatorState> navK=GlobalKey<NavigatorState>();
BuildContext? myContext=navK.currentState!.context;
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
  static back({dynamic  res}){
    Navigator.of(myContext!).pop(res);
  }
}