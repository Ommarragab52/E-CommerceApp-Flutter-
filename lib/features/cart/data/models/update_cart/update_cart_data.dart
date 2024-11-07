import 'package:flutter_ecommerce_app/features/cart/data/models/cart_response/cart_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_cart_data.g.dart';

@JsonSerializable()
class UpdateCartData {
  CartItem? cartItem;
  @JsonKey(name: 'sub_total')
  int? subTotal;
  int? total;

  UpdateCartData({this.cartItem, this.subTotal, this.total});

  factory UpdateCartData.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartDataFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCartDataToJson(this);
}
