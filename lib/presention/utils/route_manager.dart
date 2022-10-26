import 'package:base_flutter_env/presention/ui/home/home_sc.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String HOME="/";
}
class GenerateRoute{
  static Route? getRoutes(RouteSettings settings){
    switch(settings.name)
    {
      case Routes.HOME:
        return MaterialPageRoute(builder: (context) => HomeSc(),);
    }

  }
}