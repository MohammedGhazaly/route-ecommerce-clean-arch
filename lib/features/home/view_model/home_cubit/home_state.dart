part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

// CategoryStates
final class HomeCategoryLoading extends HomeState {}

final class HomeCategorySuccess extends HomeState {
  final CategoryOrBrandResponseEntity categoryOrBrandResponseEntity;
  HomeCategorySuccess({required this.categoryOrBrandResponseEntity});
}

final class HomeCategoryFailure extends HomeState {
  final String errorMessage;

  HomeCategoryFailure({required this.errorMessage});
}
// BrandsStates

final class HomeBrandsLoading extends HomeState {}

final class HomeBrandsSuccess extends HomeState {
  final CategoryOrBrandResponseEntity categoryOrBrandResponseEntity;
  HomeBrandsSuccess({required this.categoryOrBrandResponseEntity});
}

final class HomeBrandsFailure extends HomeState {
  final String errorMessage;

  HomeBrandsFailure({required this.errorMessage});
}
