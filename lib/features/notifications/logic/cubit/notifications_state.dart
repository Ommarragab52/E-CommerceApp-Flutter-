import 'package:flutter_ecommerce_app/features/notifications/data/models/notifications_response/notification_model.dart';

sealed class NotificationsState {}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsSuccess extends NotificationsState {
  final List<NotificationModel>? notificationsList;
  NotificationsSuccess(this.notificationsList);
}

class NotificationsFailure extends NotificationsState {
  final String message;
  NotificationsFailure(this.message);
}
