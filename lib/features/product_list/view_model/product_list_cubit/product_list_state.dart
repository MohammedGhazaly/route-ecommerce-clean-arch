part of 'product_list_cubit.dart';

@immutable
sealed class ProductListState {}

final class ProductListLoading extends ProductListState {}

final class ProductListSuccess extends ProductListState {
  final List<ProductEntity> products;

  ProductListSuccess({required this.products});
}

final class ProductListFailure extends ProductListState {
  final String errorMessage;

  ProductListFailure({required this.errorMessage});
}
