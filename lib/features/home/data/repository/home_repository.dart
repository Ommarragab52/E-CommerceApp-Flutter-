import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/search_models/products_search_response.dart';
import '../../../../core/networking/api_service.dart';
import '../models/home_response/home_response.dart';
import '../models/search_models/porducts_search_request.dart';

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

  Future<ApiResult<ProductsSearchResponse>> productsSearchByName(
      {required PorductsSearchRequest porductsSearchRequest}) async {
    try {
      var response =
          await apiService.productsSearchByName(porductsSearchRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(error: e.toString());
    }
  }
}
