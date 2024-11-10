class AddDeleteCartRequest {
  final int productId;
  AddDeleteCartRequest(this.productId);

  Map<String, dynamic> toJson() => {
        'product_id': productId,
      };
}
