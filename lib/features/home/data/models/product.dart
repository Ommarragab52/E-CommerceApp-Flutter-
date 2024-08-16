import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  int? id;
  double? price;
  @JsonKey(name: 'old_price')
  double? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  @JsonKey(name: 'in_favorites')
  bool? inFavorites;
  @JsonKey(name: 'in_cart')
  bool? inCart;

  Product({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
