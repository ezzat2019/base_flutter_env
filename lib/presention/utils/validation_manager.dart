import 'package:connectivity_plus/connectivity_plus.dart';

class ValidationManager{
Future<bool> checkInternetConnectivity()async{
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
}