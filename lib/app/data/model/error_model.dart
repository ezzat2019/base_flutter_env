class ErrorModel {
  ErrorModel({
      this.success, 
      this.error, 
      this.data,});

  ErrorModel.fromJson(dynamic json) {
    success = json['success'];
    error = json['error'] != null ? json['error'].cast<String>() : [];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
  }
  num? success;
  List<String>? error;
  List<dynamic>? data;
ErrorModel copyWith({  num? success,
  List<String>? error,
  List<dynamic>? data,
}) => ErrorModel(  success: success ?? this.success,
  error: error ?? this.error,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['error'] = error;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}