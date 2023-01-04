import 'package:base_flutter_env/app/data/model/access_token/access_token_response.dart';
import 'package:base_flutter_env/app/data/model/auth/login/login_response.dart';
import 'package:base_flutter_env/app/data/repo/base_repo.dart';
import 'package:base_flutter_env/app/data/repo/login_repo.dart';
import 'package:base_flutter_env/app/presention/utils/di_manager.dart';
import 'package:flutter/cupertino.dart';

import '../data/model/auth/login/login_request.dart';
import '../data/source/cashe/cashe_service_imp.dart';
import '../presention/utils/constant_manager.dart';
import '../presention/utils/navigastion_manager.dart';
import '../presention/utils/network_helper.dart';

class LoginProvider extends ChangeNotifier{
  final CasheServiceImp casheServiceImp=DIManager.getIt.get<CasheServiceImp>();
  final LoginRepo loginRepo=DIManager.getIt<LoginRepo>();

  LoginResponse? loginResponse;

  Future login(LoginRequest loginRequest)async{
    NetworkHelper.showLoader();

    var res= await loginRepo.login(loginRequest);
    NavigationManager.back();



    if(res!=null)
    {
      loginResponse=LoginResponse.fromJson(res.data);
      notifyListeners();
      return res;
    }
  }

}