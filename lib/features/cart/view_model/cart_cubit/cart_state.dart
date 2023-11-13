part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

// Adding item to cart States
final class AddItemToCartFailure extends CartState {
  final String errorMessage;

  AddItemToCartFailure({required this.errorMessage});
}

final class AddingItemToCart extends CartState {}

final class CartItemAdded extends CartState {
  final AddToCartResponseEntity addToCartResponse;

  CartItemAdded({required this.addToCartResponse});
}

// Getting user cart states

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

// Removing user cart states
final class RemovingItem extends CartState {}

final class RemoveItemSuccess extends CartState {}

final class RemoveItemFailure extends CartState {
  final String errorMessage;

  RemoveItemFailure({required this.errorMessage});
}
