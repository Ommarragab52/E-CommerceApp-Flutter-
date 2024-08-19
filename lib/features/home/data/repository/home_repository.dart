import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/home_response/home_response.dart';

class HomeRepository {
  final ApiService apiService;
  HomeRepository(this.apiService);

  Future<ApiResult<HomeResponse>> getHomeData() async {
    try {
      var response = await apiService.getHomeData();
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: response.message ?? 'Error');
      }
    } catch (error) {
      return ApiResult.failure(error: error.toString());
    }
  }
}
