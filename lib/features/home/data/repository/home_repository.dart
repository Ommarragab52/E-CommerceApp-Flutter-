import 'package:flutter_ecommerce_app/core/networking/api_services.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response.dart';

class HomeRepository {
  final ApiServices apiServices;
  HomeRepository({required this.apiServices});

  Future<HomeResponse> getHomeData() async {
    try {
      var response = await apiServices.getHomeData();
      return HomeResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
