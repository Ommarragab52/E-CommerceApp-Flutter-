import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_details_response.g.dart';

@JsonSerializable()
class ProductDetailsResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  ProductModel? productModel;

  ProductDetailsResponse({this.status, this.message, this.productModel});

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsResponseToJson(this);
}
