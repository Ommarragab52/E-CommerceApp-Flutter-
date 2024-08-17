import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
  int? id;
  String? image;
  dynamic category;
  dynamic product;

  Banner({this.id, this.image, this.category, this.product});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return _$BannerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}
