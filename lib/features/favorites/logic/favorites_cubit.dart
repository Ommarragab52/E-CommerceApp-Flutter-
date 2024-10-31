import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/models/favorites_response/favorites_response.dart';
import 'package:flutter_ecommerce_app/features/favorites/data/repos/favorites_repository.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository _favoritesRepository;
  FavoritesCubit(this._favoritesRepository) : super(FavoritesStateInitial());

  Map<int, bool>? favoritesMap = {};
  List<FavoriteModel>? favoritesList = [];
  Future<void> fetchFavorites() async {
    emit(GetFavoritesLoadingState());
    final result = await _favoritesRepository.getFavorites();
    result.when(
      success: (response) {
        favoritesList = response.favoritesData?.favoritesList ?? [];
        // getFavoritesMap(favoritesList);
        emit(GetFavoritesSuccessState(favoritesList));
      },
      failure: (error) {
        emit(
            GetFavoritesFailureState(error.message ?? 'Unknown error occured'));
      },
    );
  }

  void deleteFavoriteByFavoriteId(FavoriteModel favoriteModel) async {
    favoritesMap![favoriteModel.product!.id!] = false;
    emit(DeleteFavoriteLoadingState());
    final result = await _favoritesRepository
        .deleteFavoriteByFavoriteId(favoriteModel.id!);
    result.when(
      success: (response) {
        final message = response.message ?? 'Deleted successfully';
        emit(DeleteFavoriteSuccessState(message));
        fetchFavorites();
      },
      failure: (error) {
        emit(
          DeleteFavoriteFailureState(error.message ?? 'Unknown error occured'),
        );
      },
    );
  }

  void addDeleteFavoriteByProductId(
    int productId,
    bool newValue,
  ) async {
    emit(AddDeleteFavoriteLoadingState());
    final result =
        await _favoritesRepository.addDeleteFavoriteByProductId(productId);

    result.when(
      success: (response) {
        emit(AddDeleteFavoriteSuccessState(
            response.message ?? 'Added to favorites successfully'));
        favoritesMap![productId] = newValue;
        fetchFavorites();
      },
      failure: (error) {
        favoritesMap![productId] = newValue;
        emit(AddDeleteFavoriteFailureState(
            error.message ?? 'Unknown error occured'));
      },
    );
  }
}
