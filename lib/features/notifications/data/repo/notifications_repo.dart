import 'package:flutter_ecommerce_app/core/networking/api_error_handler.dart';
import 'package:flutter_ecommerce_app/core/networking/api_result.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/features/notifications/data/models/notifications_response/notifications_response.dart';

class NotificationsRepo {
  final ApiService apiService;
  NotificationsRepo(this.apiService);
  Future<ApiResult<NotificationsResponse>> getNotifications() async {
    try {
      final result = await apiService.getNotifications();
      if (result.status == true) {
        return ApiResult.success(result);
      } else {
        return ApiResult.failure(
            error: ApiErrorHandler.handleError(result.message));
      }
    } catch (e) {
      return ApiResult.failure(error: ApiErrorHandler.handleError(e));
    }
  }
}
