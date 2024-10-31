class FavoriteAddDeleteRequest {
  final int productId;
  FavoriteAddDeleteRequest({required this.productId});

  Map<String, dynamic> toJson() => {'product_id': productId};
}
