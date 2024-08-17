import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  bool? status;
  String? message;
  Data? data;

  RegisterResponse({this.status, this.message, this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return _$RegisterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
