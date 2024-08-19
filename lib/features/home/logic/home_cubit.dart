import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/features/home/data/repository/home_repository.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;
  HomeCubit(this.homeRepository) : super(const HomeState.initial());

  void getHomeData() async {
    emit(const HomeState.loading());
    var response = await homeRepository.getHomeData();
    response.when(
      success: (homeResponse) {
        emit(HomeState.success(homeResponse.data));
      },
      failure: (e) {
        emit(HomeState.error(error: e));
      },
    );
  }

  void logout() async {
    await SharedPref.removeSecuredData(SharedPrefKeys.userToken);
  }
}
