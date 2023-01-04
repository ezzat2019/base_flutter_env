
import 'package:base_flutter_env/app/presention/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/presention/ui/home/home_sc.dart';
import 'app/presention/utils/navigastion_manager.dart';
import 'app/presention/utils/route_manager.dart';
import 'app/presention/utils/theme_manager.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit (
      designSize: Size(AppSize.widthApp, AppSize.heightApp),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: navK,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeManager.getAppLightTheme(),
          darkTheme: ThemeManager.getAppDarkTheme(),
          onGenerateRoute: GenerateRoute.getRoutes,
          home: child,
        );
      },
      child: HomeSc(),
    );
  }
}
