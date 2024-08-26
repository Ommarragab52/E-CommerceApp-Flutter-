import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/core/networking/api_constants.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/login/data/models/login_response/login_response.dart';
import 'package:flutter_ecommerce_app/features/register/data/models/register_response/register_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/home/data/models/search_models/porducts_search_request.dart';
import '../../features/home/data/models/search_models/products_search_response.dart';
import '../../features/login/data/models/login_request.dart';
import '../../features/register/data/models/register_request.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> signIn(@Body() LoginRequest loginRequest);

  @POST(ApiConstants.register)
  Future<RegisterResponse> signUp(@Body() RegisterRequest registerRequest);

  @GET(ApiConstants.home)
  Future<HomeResponse> getHomeData();
  
  @POST(ApiConstants.productsSearch)
  Future<ProductsSearchResponse> productsSearchByName(
      @Body() PorductsSearchRequest porductsSearchRequest);

}
