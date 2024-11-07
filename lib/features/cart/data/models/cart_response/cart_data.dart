import 'package:json_annotation/json_annotation.dart';

import 'cart_item.dart';

part 'cart_data.g.dart';

@JsonSerializable()
class CartData {
  @JsonKey(name: 'cart_items')
  List<CartItem>? cartItems;
  @JsonKey(name: 'sub_total')
  int? subTotal;
  int? total;

  CartData({this.cartItems, this.subTotal, this.total});

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);

  Map<String, dynamic> toJson() => _$CartDataToJson(this);
}
