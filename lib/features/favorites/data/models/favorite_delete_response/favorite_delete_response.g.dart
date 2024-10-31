// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteDeleteResponse _$FavoriteDeleteResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteDeleteResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      favoriteModel: json['data'] == null
          ? null
          : FavoriteModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteDeleteResponseToJson(
        FavoriteDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.favoriteModel,
    };
