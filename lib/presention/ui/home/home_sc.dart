import 'package:base_flutter_env/presention/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  _HomeScState createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  int currentIndex=0;
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {

  print(  ModalRoute.of(context)!.settings.name);
    return Scaffold(appBar: buildAppBar(),
    body:Container()

    ,);
  }
  AppBar buildAppBar() => AppBar(title: Text("HomeSc"),
  );
}
