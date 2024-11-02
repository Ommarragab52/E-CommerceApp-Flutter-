import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter_ecommerce_app/features/notifications/data/models/notifications_response/notification_model.dart';
import 'package:flutter_ecommerce_app/features/notifications/logic/cubit/notifications_cubit.dart';
import 'package:flutter_ecommerce_app/features/notifications/logic/cubit/notifications_state.dart';
import 'package:flutter_ecommerce_app/features/notifications/ui/widgets/notification_item_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Notifications'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            BlocBuilder<NotificationsCubit, NotificationsState>(
              builder: (context, state) {
                if (state is NotificationsLoading) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 6,
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey.shade200,
                          highlightColor: Colors.grey.shade300,
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  );
                }

                // show products List
                if (state is NotificationsSuccess) {
                  if (state.notificationsList.isNullOrEmpty()) {
                    // show no result widget
                    return SliverFillRemaining(
                      child: Center(
                        child: Text(
                          'No Data Found',
                          style: AppStyles.headingH5,
                        ),
                      ),
                    );
                  }
                  final notificationsList = state.notificationsList!;
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return NotificationItemView(
                          notificationModel: notificationsList[index],
                        );
                      },
                      childCount: notificationsList.length,
                    ),
                  );
                }

                // Show error
                if (state is NotificationsFailure) {
                  // need to fix
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        'No Data Found',
                        style: AppStyles.headingH5,
                      ),
                    ),
                  );
                }
                // Show no data result
                else {
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        'No Data Found',
                        style: AppStyles.headingH5,
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
