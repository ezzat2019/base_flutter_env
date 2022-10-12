import 'package:flutter/material.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  _HomeScState createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("HomeSc"),),);
  }
}
