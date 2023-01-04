
import 'package:base_flutter_env/app/data/model/auth/login/login_request.dart';
import 'package:base_flutter_env/app/presention/utils/navigastion_manager.dart';
import 'package:base_flutter_env/app/providers/base_provider.dart';
import 'package:base_flutter_env/app/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  _HomeScState createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  late BaseProvider baseProvider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();


  }

  void init() {
    baseProvider=Provider.of<BaseProvider>(myContext!);
    baseProvider.getAccessToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(),
    body:Container(),
    floatingActionButton: FloatingActionButton(onPressed: () {
      context.read<LoginProvider>().login(LoginRequest(
        email: "e@e.com",
        password: "123456"
      ));
    },child: Text("Login"),)

    ,);
  }
  AppBar buildAppBar() => AppBar(title: Text("HomeSc"),
  );
}
