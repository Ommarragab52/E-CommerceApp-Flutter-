import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/models/favorite_add_delete/favorite_add_delete_request.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/models/favorite_add_delete/favorite_add_delete_response.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/models/favorite_delete_response/favorite_delete_response.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/models/favorites_response/favorites_response.dart';

class FavoritesRepository {
  final ApiService _apiService;
  FavoritesRepository(this._apiService);
  Future<ApiResult<FavoritesResponse>> getFavorites() async {
    try {
      final response = await _apiService.getFavorites();
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<FavoriteAddDeleteResponse>> addDeleteFavoriteByProductId(
      int productId) async {
    try {
      final response = await _apiService.addDeleteFavoriteByProductId(
        FavoriteAddDeleteRequest(productId: productId),
      );
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(error: ApiErrorHandler.handleError(response));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<FavoriteDeleteResponse>> deleteFavoriteByFavoriteId(
    int favoriteId,
  ) async {
    try {
      final response = await _apiService.deleteFavoriteByFavoriteId(favoriteId);
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
