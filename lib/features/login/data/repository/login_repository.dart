import '../../../../core/networking/api_services.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

class LoginRepository {
  final ApiServices apiServices;
  LoginRepository({required this.apiServices});

  Future<LoginResponse> signIn({required LoginRequest loginRequest}) async {
    try {
      var response = await apiServices.signIn(loginRequest: loginRequest);
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
