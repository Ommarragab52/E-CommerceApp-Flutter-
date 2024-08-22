import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? dio;

  //private constrctor
  DioFactory._();

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeOut;
      dio!.options.receiveTimeout = timeOut;
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
        requestHeader: true,
        request: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  static void addDioHeaders() async {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': 'en'};
  }

  static void addTokenToHeader(String token) {
    dio!.options.headers.addAll({'Authorization': token});
  }
}
