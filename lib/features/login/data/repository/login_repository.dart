import 'package:flutter_ecommerce_app/core/networking/api_services.dart';
import 'package:flutter_ecommerce_app/features/login/data/models/login_request.dart';
import 'package:flutter_ecommerce_app/features/login/data/models/login_response.dart';

class LoginRepository {
  final ApiServices apiServices;
  LoginRepository({required this.apiServices});

  Future<LoginResponse> signIn(
      {required LoginRequest loginRequest, String? lang}) async {
    try {
      var response =
          await apiServices.signIn(loginRequest: loginRequest, lang: lang);
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
