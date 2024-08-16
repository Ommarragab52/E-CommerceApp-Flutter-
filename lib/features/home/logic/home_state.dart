import '../data/models/banner.dart';
import '../data/models/product.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  List<Banner>? banners;
  List<Product>? products;
  String? ad;
  HomeSuccessState({this.banners, this.products, this.ad});
}

class HomeErrorState extends HomeState {
  String? message;
  HomeErrorState({this.message});
}
