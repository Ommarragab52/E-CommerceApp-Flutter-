import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
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
    dio!.interceptors.add(
      PrettyDioLogger(
        error: true,
        request: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  static void addDioHeaders() {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': 'en'};
  }

  static void addTokenToHeaderAfterLogin(String token) {
    dio!.options.headers.addAll({'Authorization': token});
  }
}
