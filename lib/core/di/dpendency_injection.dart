import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_service.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_ecommerce_app/features/category/data/repository/category_repository.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/data/repository/login_repository.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/register/data/reopository/register_repository.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future setUpGetIt() async {
  // Get dio instance
  Dio dio = DioFactory.getDio();

  // Inject Api Service
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // register
  getIt.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  //home
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  //category
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt()));
  getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));
}
