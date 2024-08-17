import 'package:dio/dio.dart';
import 'api_constants.dart';
import 'dio_factory.dart';
import '../../features/login/data/models/login_request.dart';
import '../../features/register/data/models/register_request.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(DioFactory dioFactory, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> signIn(
    @Body() LoginRequest loginRequest,
  );

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
