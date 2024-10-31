import 'package:flutter_ecommerce_app/features/favorites/data/models/favorites_response/favorites_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorite_add_delete_response.g.dart';

@JsonSerializable()
class FavoriteAddDeleteResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  FavoriteModel? favoriteModel;

  FavoriteAddDeleteResponse({this.status, this.message, this.favoriteModel});

  factory FavoriteAddDeleteResponse.fromJson(Map<String, dynamic> json) {
    return _$FavoriteAddDeleteResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FavoriteAddDeleteResponseToJson(this);
}
