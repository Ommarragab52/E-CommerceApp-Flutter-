import '../../../../core/networking/api_service.dart';
import '../models/home_response/home_response.dart';

class HomeRepository {
  final ApiService apiService;
  HomeRepository({required this.apiService});

  Future<HomeResponse> getHomeData() async {
    try {
      var response = await apiService.getHomeData();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
