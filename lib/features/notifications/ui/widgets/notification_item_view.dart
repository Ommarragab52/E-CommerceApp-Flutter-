import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/notifications/data/models/notifications_response/notification_model.dart';
import 'package:flutter_svg/svg.dart';

class NotificationItemView extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationItemView({super.key, required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesOffer),
        title: Text(
          notificationModel.title ?? '',
          style: AppStyles.headingH5,
        ),
        subtitle: Text(
          notificationModel.message ?? '',
          style: AppStyles.bodyTextNormalRegular,
        ),
      ),
    );
  }
}
