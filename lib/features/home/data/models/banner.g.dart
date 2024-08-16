// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => Banner(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      category: json['category'],
      product: json['product'],
    );

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'category': instance.category,
      'product': instance.product,
    };
