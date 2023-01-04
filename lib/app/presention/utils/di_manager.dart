import 'package:get_it/get_it.dart';
import '../../data/source/cashe/cashe_service_imp.dart';
import '../../data/source/network/network_manager.dart';
import 'lang_manager.dart';

class DIManager{
  static final getIt = GetIt.instance;
 static setupGetIt() {
    getIt.registerLazySingleton<CasheServiceImp>(
          () => CasheServiceImp(),
    );
    getIt.registerLazySingleton<LangManager>(
          () => LangManager(),
    );
    getIt.registerLazySingleton<NetworkManager>(
          () => NetworkManager(),
    );

 }
}