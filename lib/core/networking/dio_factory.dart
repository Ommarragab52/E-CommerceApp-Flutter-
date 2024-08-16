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
        headers: {'Content-Type': 'application/json', 'lang': 'en'},
      );
      dio!.interceptors.add(LogInterceptor(
          error: true, request: true, responseBody: true, requestBody: true));
      return dio!;
    } else {
      return dio!;
    }
  }
}
