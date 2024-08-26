import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/search_models/porducts_search_request.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;
  HomeCubit(this.homeRepository) : super(const HomeState.initial());

  TextEditingController searchController = TextEditingController();

  List<BannerModel> bannersList = [];
  List<ProductModel> saleProductsList = [];
  List<ProductModel> productsList = [];
  List<ProductModel> productsSearchList = [];
  String adImage = '';

  void getHomeData() async {
    emit(const HomeState.loading());
    var response = await homeRepository.getHomeData();
    response.when(
      success: (homeResponse) {
        bannersList = homeResponse.homeModel!.banners ?? [];
        productsList = homeResponse.homeModel!.products ?? [];
        adImage = homeResponse.homeModel!.ad ?? '';
        saleProductsList =
            getSaleProducts(homeResponse.homeModel?.products ?? []);
        emit(HomeState.success(
          banners: bannersList,
          products: productsList,
          saleProducts: saleProductsList,
          adImage: adImage,
        ));
      },
      failure: (e) {
        emit(HomeState.error(error: e.message ?? 'Unknown error occured'));
      },
    );
  }

  void logout() async {
    await SharedPref.removeSecuredData(SharedPrefKeys.userToken);
  }

  List<ProductModel> getSaleProducts(List<ProductModel>? productsList) {
    List<ProductModel> saleProducts = [];
    debugPrint('Products List : $productsList');
    productsList?.forEach(
      (product) {
        if (product.discount! > 0) {
          debugPrint('Sale Products : $product');
          saleProducts.add(product);
        }
      },
    );
    debugPrint('Sale Products : $saleProducts');

    return saleProducts;
  }

  void searchProductsByName({required String text}) async {
    emit(const HomeState.searchLoading());
    var response = await homeRepository.productsSearchByName(
        porductsSearchRequest: PorductsSearchRequest(text: text));
    response.when(
      success: (porductsSearchResponse) {
        productsSearchList =
            porductsSearchResponse.searchModel?.productsList ?? [];
        emit(HomeState.searchSuccess(productSearchList: productsSearchList));
      },
      failure: (error) {
        emit(HomeState.searchError(
            error: error.message ?? 'Unknown error occured'));
      },
    );
  }
}
