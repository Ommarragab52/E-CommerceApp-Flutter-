import '../../../../core/networking/api_services.dart';
import '../models/register_request.dart';
import '../models/register_response.dart';

class RegisterRepository {
  final ApiServices apiServices;
  RegisterRepository({required this.apiServices});

  Future<RegisterResponse> signUp(
      {required RegisterRequest registerRequest}) async {
    try {
      var response = await apiServices.signUp(registerRequest: registerRequest);
      return RegisterResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
