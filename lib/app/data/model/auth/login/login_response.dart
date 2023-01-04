class LoginResponse {
  LoginResponse({
      this.success, 
      this.error, 
      this.data,});

  LoginResponse.fromJson(dynamic json) {
    success = json['success'];
    if (json['error'] != null) {
      error = [];
      json['error'].forEach((v) {
        error?.add(v);
      });
    }
    data = json['data'] != null ? DataLogin.fromJson(json['data']) : null;
  }
  num? success;
  List<dynamic>? error;
  DataLogin? data;
LoginResponse copyWith({  num? success,
  List<dynamic>? error,
  DataLogin? data,
}) => LoginResponse(  success: success ?? this.success,
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

class DataLogin {
  DataLogin({
      this.customerId, 
      this.customerGroupId, 
      this.storeId, 
      this.languageId, 
      this.firstname, 
      this.lastname, 
      this.email, 
      this.telephone, 
      this.fax, 
      this.cart, 
      this.wishlist, 
      this.newsletter, 
      this.addressId, 
      this.customField, 
      this.ip, 
      this.status, 
      this.approved, 
      this.safe, 
      this.code, 
      this.dateAdded, 
      this.customFields, 

      this.wishlistTotal, 
      this.cartCountProducts,});

  DataLogin.fromJson(dynamic json) {
    customerId = json['customer_id'];
    customerGroupId = json['customer_group_id'];
    storeId = json['store_id'];
    languageId = json['language_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    telephone = json['telephone'];
    fax = json['fax'];
    cart = json['cart'];
    if (json['wishlist'] != null) {
      wishlist = [];
      json['wishlist'].forEach((v) {
        wishlist?.add(v);
      });
    }
    newsletter = json['newsletter'];
    addressId = json['address_id'];
    customField = json['custom_field'];
    ip = json['ip'];
    status = json['status'];
    approved = json['approved'];
    safe = json['safe'];
    code = json['code'];
    dateAdded = json['date_added'];
    if (json['custom_fields'] != null) {
      customFields = [];
      json['custom_fields'].forEach((v) {
        customFields?.add(v);
      });
    }
    wishlistTotal = json['wishlist_total'];
    cartCountProducts = json['cart_count_products'];
  }
  String? customerId;
  String? customerGroupId;
  String? storeId;
  String? languageId;
  String? firstname;
  String? lastname;
  String? email;
  String? telephone;
  String? fax;
  String? cart;
  List<dynamic>? wishlist;
  String? newsletter;
  String? addressId;
  String? customField;
  String? ip;
  String? status;
  String? approved;
  String? safe;
  String? code;
  String? dateAdded;
  List<dynamic>? customFields;
  String? wishlistTotal;
  num? cartCountProducts;
  DataLogin copyWith({  String? customerId,
  String? customerGroupId,
  String? storeId,
  String? languageId,
  String? firstname,
  String? lastname,
  String? email,
  String? telephone,
  String? fax,
  String? cart,
  List<dynamic>? wishlist,
  String? newsletter,
  String? addressId,
  String? customField,
  String? ip,
  String? status,
  String? approved,
  String? safe,
  String? code,
  String? dateAdded,
  List<dynamic>? customFields,
  String? wishlistTotal,
  num? cartCountProducts,
}) => DataLogin(  customerId: customerId ?? this.customerId,
  customerGroupId: customerGroupId ?? this.customerGroupId,
  storeId: storeId ?? this.storeId,
  languageId: languageId ?? this.languageId,
  firstname: firstname ?? this.firstname,
  lastname: lastname ?? this.lastname,
  email: email ?? this.email,
  telephone: telephone ?? this.telephone,
  fax: fax ?? this.fax,
  cart: cart ?? this.cart,
  wishlist: wishlist ?? this.wishlist,
  newsletter: newsletter ?? this.newsletter,
  addressId: addressId ?? this.addressId,
  customField: customField ?? this.customField,
  ip: ip ?? this.ip,
  status: status ?? this.status,
  approved: approved ?? this.approved,
  safe: safe ?? this.safe,
  code: code ?? this.code,
  dateAdded: dateAdded ?? this.dateAdded,
  customFields: customFields ?? this.customFields,
  wishlistTotal: wishlistTotal ?? this.wishlistTotal,
  cartCountProducts: cartCountProducts ?? this.cartCountProducts,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer_id'] = customerId;
    map['customer_group_id'] = customerGroupId;
    map['store_id'] = storeId;
    map['language_id'] = languageId;
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['email'] = email;
    map['telephone'] = telephone;
    map['fax'] = fax;
    map['cart'] = cart;
    if (wishlist != null) {
      map['wishlist'] = wishlist?.map((v) => v.toJson()).toList();
    }
    map['newsletter'] = newsletter;
    map['address_id'] = addressId;
    map['custom_field'] = customField;
    map['ip'] = ip;
    map['status'] = status;
    map['approved'] = approved;
    map['safe'] = safe;
    map['code'] = code;
    map['date_added'] = dateAdded;
    if (customFields != null) {
      map['custom_fields'] = customFields?.map((v) => v.toJson()).toList();
    }
    map['wishlist_total'] = wishlistTotal;
    map['cart_count_products'] = cartCountProducts;
    return map;
  }

}

