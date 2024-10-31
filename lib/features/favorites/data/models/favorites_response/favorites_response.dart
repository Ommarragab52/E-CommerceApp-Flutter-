import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorites_response.g.dart';

@JsonSerializable()
class FavoritesResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  FavoritesData? favoritesData;

  FavoritesResponse({this.status, this.message, this.favoritesData});

  factory FavoritesResponse.fromJson(Map<String, dynamic> json) {
    return _$FavoritesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FavoritesResponseToJson(this);
}

@JsonSerializable()
class FavoritesData {
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'data')
  List<FavoriteModel>? favoritesList;
  @JsonKey(name: 'first_page_url')
  String? firstPageUrl;
  int? from;
  @JsonKey(name: 'last_page')
  int? lastPage;
  @JsonKey(name: 'last_page_url')
  String? lastPageUrl;
  @JsonKey(name: 'next_page_url')
  dynamic nextPageUrl;
  String? path;
  @JsonKey(name: 'per_page')
  int? perPage;
  @JsonKey(name: 'prev_page_url')
  dynamic prevPageUrl;
  int? to;
  int? total;

  FavoritesData({
    this.currentPage,
    this.favoritesList,
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

  factory FavoritesData.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDataFromJson(json);

  Map<String, dynamic> toJson() => _$FavoritesDataToJson(this);
}

@JsonSerializable()
class FavoriteModel {
  int? id;
  ProductModel? product;

  FavoriteModel({this.id, this.product});

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}
