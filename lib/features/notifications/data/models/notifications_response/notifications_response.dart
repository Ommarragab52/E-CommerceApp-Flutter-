import 'package:json_annotation/json_annotation.dart';

import 'notifications_data.dart';

part 'notifications_response.g.dart';

@JsonSerializable()
class NotificationsResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  NotificationData? notificationData;

  NotificationsResponse({this.status, this.message, this.notificationData});

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) {
    return _$NotificationsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationsResponseToJson(this);
}
