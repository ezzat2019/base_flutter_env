import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dio_logger/dio_logger.dart';
import '../../../../generated/l10n.dart';
import '../../../presention/utils/network_helper.dart';
import '../../../presention/utils/validation_manager.dart';
class NetworkManager{
   late Dio dio;


  init() {
    dio = Dio(BaseOptions(baseUrl: NetworkHelper.BASE_URL, headers: NetworkHelper.MyHeaders,
    validateStatus: (status) {
      return status!<500;
    },));
    dio.interceptors.add(dioLoggerInterceptor);
    dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        if (e.response != null) {
          if (e.response!.statusCode == 401||e.response!.statusCode == 500) {

          }
         else if (e.response!.statusCode == 403) {

          }
        }

        handler.next(e);
      },
      onRequest: (options, handler) {
        ValidationManager.checkInternetConnectivity();
        handler.next(options);
      },
      onResponse: (e, handler) {
        if (e.statusCode == 401||e.statusCode == 500) {

        }
        else if (e.statusCode == 403) {

        }
        handler.next(e);
      },
    ));
  }
}