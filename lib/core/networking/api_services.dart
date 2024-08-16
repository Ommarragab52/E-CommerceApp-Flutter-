import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'dio_factory.dart';
import '../../features/login/data/models/login_request.dart';
import '../../features/register/data/models/register_request.dart';

class ApiServices {
  Future<Response> signIn({required LoginRequest loginRequest}) async {
    try {
      var response = await DioFactory.getDio().post(
        ApiConstants.login,
        data: loginRequest.toJson(loginRequest),
      );
      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response> signUp({required RegisterRequest registerRequest}) async {
    try {
      var response = await DioFactory.getDio().post(
        ApiConstants.register,
        data: registerRequest.toJson(registerRequest),
      );
      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response> getHomeData() async {
    try {
      var response = await DioFactory.getDio().get(ApiConstants.home);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
