import 'package:json_annotation/json_annotation.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  bool? status;
  dynamic message;
  @JsonKey(name: 'data')
  CategoryData? categoryData;

  CategoryResponse({this.status, this.message, this.categoryData});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}

@JsonSerializable()
class CategoryData {
  @JsonKey(name: 'current_page')
  int? currentPage;
  @JsonKey(name: 'data')
  List<CategoryModel>? categoriesList;
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

  CategoryData({
    this.currentPage,
    this.categoriesList,
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

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}

@JsonSerializable()
class CategoryModel {
  int? id;
  String? name;
  String? image;

  CategoryModel({this.id, this.name, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
