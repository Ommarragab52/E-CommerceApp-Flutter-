import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  bool? status;
  String? message;
  Data? data;

  LoginResponse({this.status, this.message, this.data});
  
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
