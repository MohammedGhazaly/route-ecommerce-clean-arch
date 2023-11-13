part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartFailure extends CartState {
  final String errorMessage;

  CartFailure({required this.errorMessage});
}

final class AddingItemToCart extends CartState {}

final class CartItemAdded extends CartState {
  final AddToCartResponseEntity addToCartResponse;

  CartItemAdded({required this.addToCartResponse});
}
