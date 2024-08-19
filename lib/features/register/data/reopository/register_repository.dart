import 'package:flutter_ecommerce_app/features/register/data/models/register_request.dart';
import '../../../../core/networking/api_service.dart';
import '../models/register_response/register_response.dart';

class RegisterRepository {
  final ApiService apiService;
  RegisterRepository(this.apiService);

  Future<RegisterResponse> signUp(
      {required RegisterRequest registerRequest}) async {
    try {
      var response = await apiService.signUp(registerRequest);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
