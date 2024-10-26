import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';

enum ProductsDetailsStateStatus {
  initial,
  loading,
  success,
  error,
}

class ProductDetailsState {
  final ProductsDetailsStateStatus? status;
  final ProductModel? product;
  final String? errorMessage;

  ProductDetailsState._({
    this.product,
    this.status,
    this.errorMessage,
  });

  static ProductDetailsState initial = ProductDetailsState._(
    status: ProductsDetailsStateStatus.initial,
    product: null,
  );

  ProductDetailsState init() => initial;

  ProductDetailsState loading() =>
      copyWith(status: ProductsDetailsStateStatus.loading);

  ProductDetailsState success() =>
      copyWith(status: ProductsDetailsStateStatus.success);

  ProductDetailsState error() =>
      copyWith(status: ProductsDetailsStateStatus.error);

  ProductDetailsState copyWith({
    ProductsDetailsStateStatus? status,
    ProductModel? product,
    String? errorMessage,
  }) {
    return ProductDetailsState._(
        status: status ?? this.status,
        product: product ?? this.product,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  String toString() {
    return 'ProductsDetailsStates(status: $status, product: $product, error: $errorMessage)';
  }
}
