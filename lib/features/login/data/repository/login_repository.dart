import 'package:flutter_ecommerce_app/features/login/data/models/login_response/login_response.dart';

import '../../../../core/networking/api_service.dart';
import '../models/login_request.dart';

class LoginRepository {
  final ApiService apiService;
  LoginRepository(this.apiService);

  Future<LoginResponse> signIn({required LoginRequest loginRequest}) async {
    try {
      var response = await apiService.signIn(loginRequest);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
