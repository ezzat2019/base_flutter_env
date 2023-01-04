class AccessTokenRequest {
  AccessTokenRequest({
      this.oldToken,});

  AccessTokenRequest.fromJson(dynamic json) {
    oldToken = json['old_token'];
  }
  String? oldToken;
AccessTokenRequest copyWith({  String? oldToken,
}) => AccessTokenRequest(  oldToken: oldToken ?? this.oldToken,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['old_token'] = oldToken;
    return map;
  }

}