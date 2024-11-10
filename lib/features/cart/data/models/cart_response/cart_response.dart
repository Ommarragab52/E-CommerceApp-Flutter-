import 'package:json_annotation/json_annotation.dart';

import 'cart_data.dart';

part 'cart_response.g.dart';

@JsonSerializable()
class CartResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  CartData? cartData;

  CartResponse({this.status, this.message, this.cartData});

  factory CartResponse.fromJson(Map<String, dynamic> json) {
    return _$CartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartResponseToJson(this);
}
