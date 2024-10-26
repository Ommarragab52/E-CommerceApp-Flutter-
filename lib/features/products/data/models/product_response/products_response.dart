import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  ProductsData? productsData;

  ProductsResponse({this.status, this.message, this.productsData});

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);
}

@JsonSerializable()
class ProductsData {
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'data')
  List<ProductModel>? productsList;
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

  ProductsData({
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

  factory ProductsData.fromJson(Map<String, dynamic> json) =>
      _$ProductsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsDataToJson(this);
}

@JsonSerializable()
class ProductModel {
  int? id;
  String? name;
  double? price;
  @JsonKey(name: 'old_price')
  double? oldPrice;
  int? discount;
  String? image;
  String? description;
  List<String>? images;
  @JsonKey(name: 'in_favorites')
  bool? inFavorites;
  @JsonKey(name: 'in_cart')
  bool? inCart;

  ProductModel({
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

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, oldPrice: $oldPrice, discount: $discount, image: $image, images: ${images?.length}, description: $description, inFavorites: $inFavorites, inCart: $inCart)';
  }
}
