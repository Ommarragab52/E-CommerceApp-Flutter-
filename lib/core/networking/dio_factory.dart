import 'package:dio/dio.dart';
import 'api_constants.dart';

class DioFactory {
  static Dio? dio;

  //private constrctor
  DioFactory._();

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options = BaseOptions(
        baseUrl: ApiConstants.baseUrl,
      );
      addDioInterceptor();
      addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio!.interceptors.add(LogInterceptor(
        error: true, request: true, responseBody: true, requestBody: true));
  }

  static void addDioHeaders() {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': 'en'};
  }

  static void addTokenToHeaderAfterLogin(String token) {
    dio!.options.headers.addAll({'Authorization': token});
  }
}
