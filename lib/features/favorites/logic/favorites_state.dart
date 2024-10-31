import 'package:flutter_ecommerce_app/features/favorites/data/models/favorites_response/favorites_response.dart';

sealed class FavoritesState {}

class FavoritesStateInitial extends FavoritesState {}

// Get Favorites States
class GetFavoritesLoadingState extends FavoritesState {}

class GetFavoritesSuccessState extends FavoritesState {
  final List<FavoriteModel>? favoritesList;
  GetFavoritesSuccessState(this.favoritesList);
}

class GetFavoritesFailureState extends FavoritesState {
  final String? error;
  GetFavoritesFailureState(this.error);
}

class AddDeleteFavoriteLoadingState extends FavoritesState {}

class AddDeleteFavoriteSuccessState extends FavoritesState {
  final String message;
  AddDeleteFavoriteSuccessState(this.message);
}

class AddDeleteFavoriteFailureState extends FavoritesState {
  final String error;
  AddDeleteFavoriteFailureState(this.error);
}

class DeleteFavoriteLoadingState extends FavoritesState {}

class DeleteFavoriteSuccessState extends FavoritesState {
  final String message;
  DeleteFavoriteSuccessState(this.message);
}

class DeleteFavoriteFailureState extends FavoritesState {
  final String error;
  DeleteFavoriteFailureState(this.error);
}
