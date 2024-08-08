import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_constants.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_ecommerce_app/features/login/data/models/login_request.dart';

class ApiServices {
  Future<Response> signIn({required LoginRequest loginRequest, String? lang}) {
    try {
      var response = DioFactory.getDio().post(ApiConstants.LOGIN_ENDPOINT,
          data: loginRequest.toJson(loginRequest),
          options: Options(headers: {'lang': lang ?? 'en'}));
      return response;
    } catch (error) {
      rethrow;
    }
  }
}
