part of 'cart_cubit.dart';

sealed class CartState {}

class CartInitial extends CartState {}

class CartGetDataLoading extends CartState {}

class CartGetDataSuccess extends CartState {
  final List<CartItem>? cartList;
  CartGetDataSuccess(this.cartList);
}

class CartGetDataFailure extends CartState {
  final String error;
  CartGetDataFailure(this.error);
}

class CartAddDeleteLoading extends CartState {}

class CartAddDeleteSuccess extends CartState {
  final String message;
  CartAddDeleteSuccess(this.message);
}

class CartAddDeleteFailure extends CartState {
  final String error;
  CartAddDeleteFailure(this.error);
}

class CartUpdateLoading extends CartState {}

class CartUpdateSuccess extends CartState {
  final String message;
  CartUpdateSuccess(this.message);
}

class CartUpdateFailure extends CartState {
  final String error;
  CartUpdateFailure(this.error);
}
