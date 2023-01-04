import 'package:base_flutter_env/app/data/model/access_token/access_token_request.dart';
import 'package:base_flutter_env/app/data/model/auth/login/login_request.dart';
import 'package:base_flutter_env/app/data/model/error_model.dart';
import 'package:base_flutter_env/app/presention/utils/constant_manager.dart';
import 'package:dio/dio.dart';

import '../../../generated/l10n.dart';
import '../../presention/utils/di_manager.dart';
import '../../presention/utils/navigastion_manager.dart';
import '../../presention/utils/network_helper.dart';
import '../source/network/network_manager.dart';

class LoginRepo{
  NetworkManager networkManager=DIManager.getIt.get<NetworkManager>();
  Future<Response?> login(LoginRequest loginRequest)
  async{

    try {
      NetworkHelper.MyHeaders["Authorization"]=NetworkHelper.tokken;
      Response? res= await networkManager.dio.post(NetworkHelper.POST_LOGIN,data: loginRequest.toJson(),options: Options(
          headers: NetworkHelper.MyHeaders
      ));

      if(res.statusCode==200)
      {
        return res;
      }else
      {
        try {
          ErrorModel errorResponse=ErrorModel.fromJson(res.data);
          NetworkHelper.showSnackBar(errorResponse.error?[0]??S.current.errorTryAgainLater, false);
        } catch (e) {
          NetworkHelper.showSnackBar(e.toString(), false);
          // TODO
        }
        return null;
      }
    }  catch (e) {
      print("========== execption ==================");
      print(e.toString());
      NavigationManager.back();
      NetworkHelper.showSnackBar(e.toString(), false);
      return null;
      // TODO
    }

  }
}