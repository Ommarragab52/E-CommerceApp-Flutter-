import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';

enum ProductsStateStatus {
  initial,
  productsLoading,
  productsSuccess,
  productsError,
}

class ProductsState {
  final ProductsStateStatus? status;
  final List<ProductModel>? productsList;
  final List<ProductModel>? saleProductsList;
  final int? categoryId;
  final int? page;
  final String? errorMessage;

  ProductsState._({
    this.productsList,
    this.saleProductsList,
    this.status,
    this.errorMessage,
    this.categoryId,
    this.page,
  });

  static ProductsState initial = ProductsState._(
    status: ProductsStateStatus.initial,
    productsList: [],
    saleProductsList: [],
    categoryId: null,
    page: 0,
    errorMessage: '',
  );

  ProductsState productsLoading() => copyWith(
        status: ProductsStateStatus.productsLoading,
      );

  ProductsState copyWith({
    ProductsStateStatus? status,
    List<ProductModel>? productsList,
    List<ProductModel>? saleProductsList,
    int? categoryId,
    int? page,
    String? errorMessage,
  }) {
    return ProductsState._(
      status: status ?? this.status,
      productsList: productsList ?? this.productsList,
      saleProductsList: saleProductsList ?? this.saleProductsList,
      categoryId: this.categoryId ?? this.categoryId,
      page: this.page ?? this.page,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    return 'ProductsState(status: $status, productsList: $productsList, saleProductsList: $saleProductsList, categoryId: $categoryId, page: $page, errorMessage: $errorMessage)';
  }
}
