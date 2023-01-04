import 'package:base_flutter_env/app/data/model/access_token/access_token_request.dart';
import 'package:base_flutter_env/app/data/model/error_model.dart';
import 'package:base_flutter_env/app/presention/utils/constant_manager.dart';
import 'package:dio/dio.dart';

import '../../../generated/l10n.dart';
import '../../presention/utils/di_manager.dart';
import '../../presention/utils/navigastion_manager.dart';
import '../../presention/utils/network_helper.dart';
import '../source/network/network_manager.dart';

class BaseRepo{
  NetworkManager networkManager=DIManager.getIt.get<NetworkManager>();
  Future<Response?> getAccessToken(AccessTokenRequest accessTokenRequest)
  async{
    print("object");
    NetworkHelper.MyHeaders["Authorization"]=ConstantManager.createAuth();
    try {
      Response? res= await networkManager.dio.post(NetworkHelper.POST_GET_ACCESS_TOKEN+"/${ConstantManager
      .GRANT_TYPE_VAL}",data: accessTokenRequest.toJson(),options: Options(
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