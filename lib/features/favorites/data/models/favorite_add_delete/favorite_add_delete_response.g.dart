// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_add_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteAddDeleteResponse _$FavoriteAddDeleteResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteAddDeleteResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      favoriteModel: json['data'] == null
          ? null
          : FavoriteModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteAddDeleteResponseToJson(
        FavoriteAddDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.favoriteModel,
    };
