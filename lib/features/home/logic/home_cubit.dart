import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import '../../../core/networking/api_service.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  void getHomeData() async {
    emit(HomeLoadingState());
    var homeRepository =
        HomeRepository(apiService: ApiService(DioFactory.getDio()));
    await homeRepository.getHomeData().then(
      (response) async {
        if (response.status == true) {
          emit(HomeSuccessState(
            banners: response.data?.banners,
            products: response.data?.products,
            ad: response.data?.ad,
          ));
        } else {
          emit(HomeErrorState(message: response.message));
        }
      },
    ).catchError((error) {
      print(error.toString());
      emit(HomeErrorState(message: error.toString()));
    });
  }
}
