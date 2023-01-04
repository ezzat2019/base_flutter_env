
import 'package:base_flutter_env/app/presention/utils/value_manager.dart';
import 'package:base_flutter_env/app/providers/base_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'app/data/source/cashe/cashe_service_imp.dart';
import 'app/data/source/network/network_manager.dart';
import 'app/presention/ui/home/home_sc.dart';
import 'app/presention/utils/di_manager.dart';
import 'app/presention/utils/navigastion_manager.dart';
import 'app/presention/utils/route_manager.dart';
import 'app/presention/utils/theme_manager.dart';
import 'app/providers/login_provider.dart';
import 'generated/l10n.dart';

void main() async{
 await initApp();
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BaseProvider(),),
        ChangeNotifierProvider(create: (context) => LoginProvider(),)

      ],
      child: MyApp()));


}
Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DIManager.setupGetIt();
  await DIManager.getIt<CasheServiceImp>().init();
  DIManager.getIt<NetworkManager>().init();
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
