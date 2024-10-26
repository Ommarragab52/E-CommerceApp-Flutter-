import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:flutter_ecommerce_app/features/products/data/repos/product_details_repository.dart';
import 'package:flutter_ecommerce_app/features/products/logic/product_details_cubit/product_details_states.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepository productDetailsRepository;

  ProductDetailsCubit(this.productDetailsRepository)
      : super(ProductDetailsState.initial);

  void getProduct({required ProductModel? productModel}) async {
    emit(state.copyWith(status: ProductsDetailsStateStatus.loading));

    if (productModel != null) {
      emit(
        state.copyWith(
          status: ProductsDetailsStateStatus.success,
          product: productModel,
        ),
      );
    }
  }
}
