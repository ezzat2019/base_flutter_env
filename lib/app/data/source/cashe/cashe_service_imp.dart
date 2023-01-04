
import 'package:shared_preferences/shared_preferences.dart';

import 'cashe_service.dart';

class CasheServiceImp extends CasheService {
  SharedPreferences? sharedPreferences;

  @override
  Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
