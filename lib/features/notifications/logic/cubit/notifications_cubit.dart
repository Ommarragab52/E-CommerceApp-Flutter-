import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/notifications/data/models/notifications_response/notification_model.dart';
import 'package:flutter_ecommerce_app/features/notifications/data/repo/notifications_repo.dart';
import 'package:flutter_ecommerce_app/features/notifications/logic/cubit/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationsRepo notificationsRepo;
  NotificationsCubit(this.notificationsRepo) : super(NotificationsInitial());

  void getNotifications() async {
    emit(NotificationsLoading());
    final result = await notificationsRepo.getNotifications();
    result.when(
      success: (response) {
        List<NotificationModel> notificationsList = [];
        response.notificationData?.notificationsList
            ?.asMap()
            .forEach((index, value) {
          if (index >= 6) {
            notificationsList.add(value);
          }
        });
        emit(NotificationsSuccess(notificationsList));
      },
      failure: (error) {
        emit(NotificationsFailure(error.message ?? 'Unknown error occured'));
      },
    );
  }
}
