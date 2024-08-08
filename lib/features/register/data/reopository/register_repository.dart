import 'package:flutter_ecommerce_app/core/networking/api_services.dart';
import 'package:flutter_ecommerce_app/features/register/data/models/register_request.dart';
import 'package:flutter_ecommerce_app/features/register/data/models/register_response.dart';

class RegisterRepository {
  final ApiServices apiServices;
  RegisterRepository({required this.apiServices});

  Future<RegisterResponse> signUp(
      {required RegisterRequest registerRequest, String? lang}) async {
    try {
      var response = await apiServices.signUp(
          registerRequest: registerRequest, lang: lang);
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
