import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';

enum HomeStateStatus {
  initial,
  loading,
  success,
  error,
}

class HomeState {
  final HomeStateStatus? status;
  final List<BannerModel>? banners;
  final String? adImage;
  final String? errorMessage;

  HomeState._({
    this.status,
    this.banners,
    this.adImage,
    this.errorMessage,
  });

  // Initial state
  static HomeState initial = HomeState._(
    status: HomeStateStatus.initial,
    banners: [],
    adImage: '',
    errorMessage: '',
  );

  // Lodaing State
  HomeState loading() => HomeState._(status: HomeStateStatus.loading);

  // Success State
  HomeState success({
    List<BannerModel>? banners,
    String? adImage,
  }) =>
      HomeState._(
        status: HomeStateStatus.success,
        banners: banners ?? this.banners,
        adImage: adImage ?? this.adImage,
      );

  // Error State
  HomeState error({
    String? errorMessage,
  }) =>
      HomeState._(
        status: HomeStateStatus.error,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  String toString() {
    return 'HomeState(status: $status, banners: $banners, adImage: $adImage, errorMessage: $errorMessage)';
  }
}
