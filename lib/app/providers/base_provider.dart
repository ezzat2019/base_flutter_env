import 'package:base_flutter_env/app/data/model/access_token/access_token_response.dart';
import 'package:base_flutter_env/app/data/repo/base_repo.dart';
import 'package:base_flutter_env/app/presention/utils/di_manager.dart';
import 'package:flutter/cupertino.dart';

import '../data/source/cashe/cashe_service_imp.dart';
import '../presention/utils/constant_manager.dart';

class BaseProvider extends ChangeNotifier{
  final CasheServiceImp casheServiceImp=DIManager.getIt.get<CasheServiceImp>();
  final BaseRepo baseRepo=DIManager.getIt<BaseRepo>();

  AccessTokenResponse? accessTokenResponse;

Future<bool> getAccessToken()async{
  var res= await baseRepo.getAccessToken();

  if(res!=null)
    {
      accessTokenResponse=AccessTokenResponse.fromJson(res.data);
      String token=accessTokenResponse!.data!.tokenType!+" "+accessTokenResponse!.data!.accessToken.toString();
      casheServiceImp.sharedPreferences!.setString(ConstantManager.TOKEN_KEY, token);
      return true;
    }
  else
    {
      return false;
    }
}

}