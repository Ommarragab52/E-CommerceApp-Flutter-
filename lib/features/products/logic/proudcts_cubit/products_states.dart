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
  final List<ProductModel>? productsByCategoryList;

  final int? categoryId;
  final int? page;
  final String? successMessage;
  final String? errorMessage;

  ProductsState._({
    this.productsList,
    this.saleProductsList,
    this.productsByCategoryList,
    this.status,
    this.successMessage,
    this.errorMessage,
    this.categoryId,
    this.page,
  });

  static ProductsState initial = ProductsState._(
    status: ProductsStateStatus.initial,
    productsList: [],
    saleProductsList: [],
    productsByCategoryList: [],
    categoryId: null,
    page: 0,
    successMessage: '',
    errorMessage: '',
  );

  ProductsState productsLoading() => copyWith(
        status: ProductsStateStatus.productsLoading,
      );

  ProductsState copyWith({
    ProductsStateStatus? status,
    List<ProductModel>? productsList,
    List<ProductModel>? saleProductsList,
    final List<ProductModel>? productsByCategoryList,
    Map<int, bool>? favoritesMap,
    int? categoryId,
    int? page,
    String? successMessage,
    String? errorMessage,
  }) {
    return ProductsState._(
      status: status ?? this.status,
      productsList: productsList ?? this.productsList,
      saleProductsList: saleProductsList ?? this.saleProductsList,
      productsByCategoryList:
          productsByCategoryList ?? this.productsByCategoryList,
      categoryId: this.categoryId ?? this.categoryId,
      page: this.page ?? this.page,
      successMessage: successMessage ?? this.successMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    return 'ProductsState(status: $status, productsList: ${productsList?.length}, saleProductsList: ${saleProductsList?.length}, productsByCategoryList: ${productsByCategoryList?.length}, categoryId: $categoryId, page: $page, successMessage: $successMessage, errorMessage: $errorMessage)';
  }
}
//
