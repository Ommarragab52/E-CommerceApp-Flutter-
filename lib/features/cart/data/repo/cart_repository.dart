import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/add_delete_cart/add_delete_cart_request.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/add_delete_cart/add_delete_cart_response.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/cart_response/cart_response.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/update_cart/update_cart_request.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/update_cart/update_cart_response.dart';

class CartRepository {
  final ApiService _apiService;

  CartRepository(this._apiService);

  Future<ApiResult<CartResponse>> getCart() async {
    try {
      final response = await _apiService.getCarts();
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<AddDeleteCartResponse>> addDeleteCart(
    AddDeleteCartRequest addDeleteCartRequest,
  ) async {
    try {
      final response =
          await _apiService.addDeleteCartByProductId(addDeleteCartRequest);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<UpdateCartResponse>> updateCart(
    int cartId,
    UpdateCartRequest updateCartRequest,
  ) async {
    try {
      final response =
          await _apiService.updateCartByCartId(cartId, updateCartRequest);
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
