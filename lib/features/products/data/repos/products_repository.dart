import 'package:flutter_ecommerce_app/core/networking/api_error_handler.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';

class ProductsRepository {
  final ApiService apiService;
  ProductsRepository(this.apiService);

  Future<ApiResult<ProductsResponse>> getProducts({
    required int? page,
    required int? categoryId,
  }) async {
    try {
      final response = await apiService.getProducts(page, categoryId);
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
