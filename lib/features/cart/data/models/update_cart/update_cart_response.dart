import 'package:flutter_ecommerce_app/features/cart/data/models/update_cart/update_cart_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_cart_response.g.dart';

@JsonSerializable()
class UpdateCartResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  UpdateCartData? updateCartData;

  UpdateCartResponse({this.status, this.message, this.updateCartData});

  factory UpdateCartResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateCartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateCartResponseToJson(this);
}
