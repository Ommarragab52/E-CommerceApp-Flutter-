import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_constants.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/categories/category_response.dart';

import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/login/data/models/login_response/login_response.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_details_response/product_details_response.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:flutter_ecommerce_app/features/register/data/models/register_response/register_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/products/data/models/products_search_models/porducts_search_request.dart';
import '../../features/products/data/models/products_search_models/products_search_response.dart';
import '../../features/login/data/models/login_request.dart';
import '../../features/register/data/models/register_request.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  // Login
  @POST(ApiConstants.login)
  Future<LoginResponse> signIn(@Body() LoginRequest loginRequest);
  // Register
  @POST(ApiConstants.register)
  Future<RegisterResponse> signUp(@Body() RegisterRequest registerRequest);
  // Home
  @GET(ApiConstants.home)
  Future<HomeResponse> getHomeData();
  // Categories
  @GET(ApiConstants.categories)
  Future<CategoryResponse> getCategories(
    @Query('page') int? page,
  );
  // get Products
  @GET(ApiConstants.products)
  Future<ProductsResponse> getProducts(
    @Query('page') int? page,
    @Query('category_id') int? categoryId,
  );
  // get Product by id
  @GET('${ApiConstants.products}/{productId}')
  Future<ProductDetailsResponse> getProductById(
    @Path('productId') int productId,
  );
  // get Products by Search
  @POST(ApiConstants.productsSearch)
  Future<ProductsSearchResponse> getProductsByName(
    @Query('page') int? page,
    @Query('name') @Body() PorductsSearchRequest porductsSearchRequest,
  );

  // Banners
  // @GET(ApiConstants.categories)
  // Future<BannersResponse> getBanners();
}
