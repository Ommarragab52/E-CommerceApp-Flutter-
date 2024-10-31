import 'package:flutter_ecommerce_app/features/favorites/data/models/favorites_response/favorites_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorite_delete_response.g.dart';

@JsonSerializable()
class FavoriteDeleteResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  FavoriteModel? favoriteModel;

  FavoriteDeleteResponse({this.status, this.message, this.favoriteModel});

  factory FavoriteDeleteResponse.fromJson(Map<String, dynamic> json) {
    return _$FavoriteDeleteResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FavoriteDeleteResponseToJson(this);
}
