import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;
  HomeCubit(this.homeRepository) : super(HomeState.initial);

  void getHomeData() async {
    emit(state.loading());
    var response = await homeRepository.getHomeData();
    response.when(
      success: (homeResponse) {
        final bannersList = homeResponse.homeModel!.banners ?? [];
        String adImage = homeResponse.homeModel!.ad ?? '';
        emit(state.success(
          banners: bannersList,
          adImage: adImage,
        ));
      },
      failure: (e) {
        emit(state.error(errorMessage: e.message ?? 'Unknown error occured'));
      },
    );
  }
}
