import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/category_response.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.success(
      {required List<CategoryModel> categories}) = Success;
  const factory CategoryState.error({required String error}) = Error;
}
