class UpdateCartRequest {
  final int quantity;
  UpdateCartRequest(this.quantity);

  Map<String, dynamic> toJson() => {'quantity': quantity};
}
