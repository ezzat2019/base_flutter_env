class AccessTokenResponse {
  AccessTokenResponse({
      this.success, 
      this.error, 
      this.data,});

  AccessTokenResponse.fromJson(dynamic json) {
    success = json['success'];
    if (json['error'] != null) {
      error = [];
      json['error'].forEach((v) {
        error?.add(v);
      });
    }
    data = json['data'] != null ? DataAccessToken.fromJson(json['data']) : null;
  }
  num? success;
  List<dynamic>? error;
  DataAccessToken? data;
AccessTokenResponse copyWith({  num? success,
  List<dynamic>? error,
  DataAccessToken? data,
}) => AccessTokenResponse(  success: success ?? this.success,
  error: error ?? this.error,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (error != null) {
      map['error'] = error?.map((v) => v.toJson()).toList();
    }
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class DataAccessToken {
  DataAccessToken({
      this.accessToken,
      this.expiresIn,
      this.tokenType,});

  DataAccessToken.fromJson(dynamic json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    tokenType = json['token_type'];
  }
  String? accessToken;
  num? expiresIn;
  String? tokenType;
  DataAccessToken copyWith({  String? accessToken,
  num? expiresIn,
  String? tokenType,
}) => DataAccessToken(  accessToken: accessToken ?? this.accessToken,
  expiresIn: expiresIn ?? this.expiresIn,
  tokenType: tokenType ?? this.tokenType,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['expires_in'] = expiresIn;
    map['token_type'] = tokenType;
    return map;
  }

}