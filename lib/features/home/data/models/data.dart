import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';
import 'product.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  List<Banner>? banners;
  List<Product>? products;
  String? ad;

  Data({this.banners, this.products, this.ad});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
