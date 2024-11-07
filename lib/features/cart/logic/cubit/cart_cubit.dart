import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/add_delete_cart/add_delete_cart_request.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/cart_response/cart_item.dart';
import 'package:flutter_ecommerce_app/features/cart/data/models/update_cart/update_cart_request.dart';
import 'package:flutter_ecommerce_app/features/cart/data/repo/cart_repository.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepository cartRepository;
  CartCubit(this.cartRepository) : super(CartInitial());

  List<CartItem> cartList = [];

  Future<void> getCarts() async {
    emit(CartGetDataLoading());
    final result = await cartRepository.getCart();
    result.when(
      success: (response) {
        cartList = response.cartData?.cartItems ?? [];
        emit(CartGetDataSuccess(cartList));
      },
      failure: (error) {
        emit(CartGetDataFailure(error.message ?? 'Unknown error occured'));
      },
    );
  }

  Future<void> addDeleteCart(
    int productId,
  ) async {
    emit(CartAddDeleteLoading());
    final result =
        await cartRepository.addDeleteCart(AddDeleteCartRequest(productId));
    result.when(
      success: (response) {
        if (inCart(productId) != null) {
          cartList.remove(inCart(productId));
        } else {
          cartList.add(response.cartItem!);
        }
        final message = response.message ?? 'successfully';
        emit(CartAddDeleteSuccess(message));
      },
      failure: (error) {
        emit(CartAddDeleteFailure(error.message ?? 'Unknown error occured'));
      },
    );
  }

  Future<void> updateCart(
    CartItem cartItem,
    int quantity,
  ) async {
    emit(CartUpdateLoading());
    final result = await cartRepository.updateCart(
        cartItem.id!, UpdateCartRequest(quantity));
    result.when(
      success: (response) {
        cartList
            .firstWhere(
              (element) => element.id == cartItem.id,
            )
            .quantity = quantity;
        final message = response.message ?? 'successfully';
        emit(CartUpdateSuccess(message));
      },
      failure: (error) {
        emit(CartUpdateFailure(error.message ?? 'Unknown error occured'));
      },
    );
  }

  CartItem? inCart(int productId) {
    for (var cartItem in cartList) {
      if (cartItem.product!.id! == productId) {
        return cartItem;
      }
    }
    return null;
  }
}
