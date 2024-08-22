// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsSearchResponse _$ProductsSearchResponseFromJson(
        Map<String, dynamic> json) =>
    ProductsSearchResponse(
      status: json['status'] as bool?,
      message: json['message'],
      searchModel: json['data'] == null
          ? null
          : SearchModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsSearchResponseToJson(
        ProductsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.searchModel,
    };

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      firstPageUrl: json['firstPageUrl'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      lastPageUrl: json['lastPageUrl'] as String?,
      nextPageUrl: json['nextPageUrl'],
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      prevPageUrl: json['prevPageUrl'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    )..productsList = (json['data'] as List<dynamic>?)
        ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.productsList,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'lastPageUrl': instance.lastPageUrl,
      'nextPageUrl': instance.nextPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
