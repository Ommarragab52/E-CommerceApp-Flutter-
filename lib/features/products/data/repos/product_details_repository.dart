import 'package:flutter_ecommerce_app/core/networking/api_error_handler.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_details_response/product_details_response.dart';

class ProductDetailsRepository {
  final ApiService apiService;
  ProductDetailsRepository(this.apiService);

  Future<ApiResult<ProductDetailsResponse>> getProductById(
      {required int productId}) async {
    try {
      final response = await apiService.getProductById(productId);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }
}
