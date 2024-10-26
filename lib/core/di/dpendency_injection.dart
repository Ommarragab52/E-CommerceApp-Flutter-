import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_ecommerce_app/features/category/data/repository/category_repository.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/products/data/repos/products_search_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home_layout/logic/cubit/home_layout_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/data/repository/login_repository.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/data/repos/product_details_repository.dart';
import 'package:flutter_ecommerce_app/features/products/data/repos/products_repository.dart';
import 'package:flutter_ecommerce_app/features/products/logic/product_details_cubit/product_details_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/logic/products_search_cubit/products_search_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/logic/proudcts_cubit/products_cubit.dart';
import 'package:flutter_ecommerce_app/features/register/data/reopository/register_repository.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_cubit.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final GetIt getIt = GetIt.instance;

  static Future setUpGetIt() async {
    // Get dio instance
    Dio dio = DioFactory.getDio();

    // Inject Api Service
    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

    //login
    getIt
        .registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
    getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

    // register
    getIt.registerLazySingleton<RegisterRepository>(
        () => RegisterRepository(getIt()));
    getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

    //home layout
    getIt.registerFactory<HomeLayoutCubit>(() => HomeLayoutCubit());

    //home
    getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
    getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

    //category
    getIt.registerLazySingleton<CategoryRepository>(
        () => CategoryRepository(getIt()));
    getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));

    // products
    getIt.registerLazySingleton<ProductsRepository>(
        () => ProductsRepository(getIt()));
    getIt.registerFactory<ProductsCubit>(() => ProductsCubit(getIt()));

    // product details
    getIt.registerLazySingleton<ProductDetailsRepository>(
        () => ProductDetailsRepository(getIt()));
    getIt.registerFactory<ProductDetailsCubit>(
        () => ProductDetailsCubit(getIt()));
    // products search

    getIt.registerLazySingleton<ProductsSearchRepository>(
        () => ProductsSearchRepository(getIt()));
    getIt.registerFactory<ProductsSearchCubit>(
        () => ProductsSearchCubit(getIt()));
  }

  static HomeLayoutCubit get homeLayoutCubit => getIt<HomeLayoutCubit>();
  static HomeCubit get homeCubit => getIt<HomeCubit>();
  static CategoryCubit get categoryCubit => getIt<CategoryCubit>();
  static ProductsCubit get productsCubit => getIt<ProductsCubit>();
  static ProductDetailsCubit get productDetailsCubit =>
      getIt<ProductDetailsCubit>();
  static LoginCubit get loginCubit => getIt<LoginCubit>();
  static RegisterCubit get registerCubit => getIt<RegisterCubit>();

  static ProductsSearchCubit get productsSearchCubit =>
      getIt<ProductsSearchCubit>();
}
