import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';

enum ProductsSearchStateStatus {
  initial,
  loading,
  success,
  error,
}

class ProductsSearchState {
  final ProductsSearchStateStatus? status;
  final List<ProductModel>? productsSearchList;
  final String? errorMessage;

  ProductsSearchState._({
    this.productsSearchList,
    this.status,
    this.errorMessage,
  });

  static ProductsSearchState initial = ProductsSearchState._(
    status: ProductsSearchStateStatus.initial,
    productsSearchList: [],
    errorMessage: '',
  );

  ProductsSearchState init() => initial;

  ProductsSearchState loading() =>
      copyWith(status: ProductsSearchStateStatus.loading);

  ProductsSearchState success() =>
      copyWith(status: ProductsSearchStateStatus.success);

  ProductsSearchState error() =>
      copyWith(status: ProductsSearchStateStatus.error);

  ProductsSearchState copyWith({
    ProductsSearchStateStatus? status,
    List<ProductModel>? productsSearchList,
    String? errorMessage,
  }) {
    return ProductsSearchState._(
        status: status ?? this.status,
        productsSearchList: productsSearchList ?? this.productsSearchList,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  String toString() {
    return 'ProductsSearchState(status: $status, productsSearchList: $productsSearchList, error: $error)';
  }
}
