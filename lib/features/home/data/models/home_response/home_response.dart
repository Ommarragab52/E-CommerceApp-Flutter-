import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  HomeModel? homeModel;

  HomeResponse({this.status, this.message, this.homeModel});

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    return _$HomeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

@JsonSerializable()
class HomeModel {
  List<BannerModel>? banners;
  List<ProductModel>? products;
  String? ad;

  HomeModel({this.banners, this.products, this.ad});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class BannerModel {
  int? id;
  String? image;
  dynamic category;
  dynamic product;

  BannerModel({this.id, this.image, this.category, this.product});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return _$BannerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
