import 'dart:convert';

class ConstantManager{

  /// app name
  static const APP_NAME = "name";

  /// lang
  static const LANGUAGE_ARABIC = "ar";
  static const LANGUAGE_ENGLISH = "en";

  /// cashe
  static const LANGUAGE_KEY = "lang";
  static const TOKEN_KEY = "token";

  /// open cart key
  static const CLIENT_ID_VAL = "shopping_oauth_client";
  static const CLIENT_SECRET_VAL = "shopping_oauth_secret";
  static const GRANT_TYPE_VAL = "client_credentials";
  static String createAuth(){
    String step1=CLIENT_ID_VAL+":"+CLIENT_SECRET_VAL;
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode(step1);
    print("create auth");
    print("Basic "+encoded);
    return "Basic "+encoded;
  }

  /// other


}