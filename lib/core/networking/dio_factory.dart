import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_constants.dart';

class DioFactory {
  static Dio? dio;

  //private constrctor
  DioFactory._();

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options = BaseOptions(
        baseUrl: ApiConstants.BASE_URL,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      dio!.interceptors.add(LogInterceptor(
          error: true, request: true, responseBody: true, requestBody: true));
      return dio!;
    } else {
      return dio!;
    }
  }
}
