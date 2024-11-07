import 'package:flutter_ecommerce_app/features/cart/data/models/cart_response/cart_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_delete_cart_response.g.dart';

@JsonSerializable()
class AddDeleteCartResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  CartItem? cartItem;

  AddDeleteCartResponse({this.status, this.message, this.cartItem});

  factory AddDeleteCartResponse.fromJson(Map<String, dynamic> json) {
    return _$AddDeleteCartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddDeleteCartResponseToJson(this);
}
