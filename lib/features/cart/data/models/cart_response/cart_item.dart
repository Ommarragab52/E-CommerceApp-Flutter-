import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_item.g.dart';

@JsonSerializable()
class CartItem {
  int? id;
  int? quantity;
  ProductModel? product;

  CartItem({this.id, this.quantity, this.product});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return _$CartItemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}
