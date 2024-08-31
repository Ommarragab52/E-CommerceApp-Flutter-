import 'package:flutter_ecommerce_app/core/networking/api_error_handler.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/category_response.dart';

class CategoryRepository {
  final ApiService apiService;
  CategoryRepository(this.apiService);

  Future<ApiResult<CategoryResponse>> getCategories({int? page}) async {
    try {
      var response = await apiService.getCategories(page);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (error) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(error));
    }
  }
}
