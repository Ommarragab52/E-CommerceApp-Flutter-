// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_delete_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDeleteCartResponse _$AddDeleteCartResponseFromJson(
        Map<String, dynamic> json) =>
    AddDeleteCartResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      cartItem: json['data'] == null
          ? null
          : CartItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddDeleteCartResponseToJson(
        AddDeleteCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.cartItem,
    };
