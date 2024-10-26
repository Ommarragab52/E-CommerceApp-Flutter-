import 'package:flutter_ecommerce_app/features/category/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  // Categories States
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.success(
      {required List<CategoryModel> categories}) = Success;
  const factory CategoryState.error({required String error}) = Error;

  // Category Details States
  const factory CategoryState.categoryProductsLoading() =
      CategoryProductsLoading;
  const factory CategoryState.categoryProductsSuccess(
      {required List<ProductModel> products}) = CategoryProductsSuccess;
  const factory CategoryState.categoryProductsError({required String error}) =
      CategoryProductsError;
}
