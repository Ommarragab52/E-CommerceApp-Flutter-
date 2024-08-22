import 'package:flutter/foundation.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  //Home State
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success({
    required List<BannerModel> banners,
    required List<ProductModel> products,
    required List<ProductModel> saleProducts,
    required String adImage,
  }) = Success;
  const factory HomeState.error({required String error}) = Error;

  //Search State
  const factory HomeState.searchLoading() = SearchLoading;
  const factory HomeState.searchSuccess(
      {required List<ProductModel> productSearchList}) = SearchSuccess;
  const factory HomeState.searchError({required String error}) = SearchError;
}
