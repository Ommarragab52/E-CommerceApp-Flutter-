import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_search_response.g.dart';

@JsonSerializable()
class ProductsSearchResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  SearchModel? searchModel;

  ProductsSearchResponse({this.status, this.message, this.searchModel});

  factory ProductsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsSearchResponseToJson(this);
}

@JsonSerializable()
class SearchModel {
  int? currentPage;
  @JsonKey(name: 'data')
  List<ProductModel>? productsList;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  SearchModel({
    this.currentPage,
    this.productsList,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
