import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/category_response.dart';
import 'package:flutter_ecommerce_app/features/category/data/repository/category_repository.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository categoryRepository;
  CategoryCubit(this.categoryRepository) : super(const CategoryState.initial());

  List<CategoryModel> categories = [];

  void getCategories() async {
    emit(const CategoryState.loading());
    var apiResult = await categoryRepository.getCategories(page: 1);
    apiResult.when(
      success: (response) {
        categories = response.categoryData?.categoriesList ?? [];
        emit(CategoryState.success(categories: categories));
      },
      failure: (error) {
        emit(CategoryState.error(
            error: error.message ?? 'Unknown error occured'));
      },
    );
  }
}
