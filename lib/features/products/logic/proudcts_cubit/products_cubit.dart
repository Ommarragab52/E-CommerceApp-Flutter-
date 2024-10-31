import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:flutter_ecommerce_app/features/products/data/repos/products_repository.dart';
import 'package:flutter_ecommerce_app/features/products/logic/proudcts_cubit/products_states.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository _productsRepository;
  ProductsCubit(
    this._productsRepository,
  ) : super(ProductsState.initial);

  List<ProductModel>? products = [];
  List<ProductModel>? productsByCategoryList = [];

  void getProducts({
    int? categoryId,
    int? page,
  }) async {
    emit(state.copyWith(status: ProductsStateStatus.productsLoading));

    var apiResult = await _productsRepository.getProducts(
      page: 1,
      categoryId: categoryId,
    );
    apiResult.when(
      success: (response) {
        if (categoryId != null) {
          productsByCategoryList = response.productsData?.productsList ?? [];
        } else {
          products = response.productsData?.productsList ?? [];
        }
        emit(
          state.copyWith(
            status: ProductsStateStatus.productsSuccess,
            productsList: getProductsList(products),
            saleProductsList: getSaleProducts(products),
            productsByCategoryList: productsByCategoryList,
          ),
        );
      },
      failure: (error) {
        emit(
          state.copyWith(
              status: ProductsStateStatus.productsError,
              errorMessage: error.message ?? 'Unknown error occured'),
        );
      },
    );
  }

  List<ProductModel> getSaleProducts(
    List<ProductModel>? productsList,
  ) {
    return productsList
            ?.where(
                (product) => product.discount != null && product.discount! > 0)
            .toList() ??
        [];
  }

  List<ProductModel> getProductsList(
    List<ProductModel>? productsList,
  ) {
    return productsList?.where((product) => product.discount! == 0).toList() ??
        [];
  }
}
