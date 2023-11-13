part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class AddItemToCartFailure extends CartState {
  final String errorMessage;

  AddItemToCartFailure({required this.errorMessage});
}

final class AddingItemToCart extends CartState {}

final class CartItemAdded extends CartState {
  final AddToCartResponseEntity addToCartResponse;

  CartItemAdded({required this.addToCartResponse});
}

final class UserCartEmpty extends CartState {}

final class UserCartLoading extends CartState {}

final class UserCartSuccess extends CartState {
  final GetUserCartResponseEntity getUserCartResponseEntity;

  UserCartSuccess({required this.getUserCartResponseEntity});
}

final class UserCartFailure extends CartState {
  final String errorMessage;

  UserCartFailure({required this.errorMessage});
}
