import 'package:base_flutter_env/app/data/repo/login_repo.dart';
import 'package:get_it/get_it.dart';
import '../../data/repo/base_repo.dart';
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
    getIt.registerLazySingleton<BaseRepo>(
          () => BaseRepo(),
    );
    getIt.registerLazySingleton<LoginRepo>(
          () => LoginRepo(),
    );

 }
}