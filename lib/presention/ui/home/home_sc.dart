import 'package:flutter/material.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  _HomeScState createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  @override
  Widget build(BuildContext context) {
  print(  ModalRoute.of(context)!.settings.name);
    return Scaffold(appBar: buildAppBar(),
    body: Column(children: [

    ],),);
  }

  AppBar buildAppBar() => AppBar(title: Text("HomeSc"),);
}
