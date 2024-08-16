import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  bool? status;
  String? message;
  Data? data;

  HomeResponse({this.status, this.message, this.data});

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    return _$HomeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}
