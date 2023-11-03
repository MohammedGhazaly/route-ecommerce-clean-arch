part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeCategoryLoading extends HomeState {}

final class HomeCategorySuccess extends HomeState {}

final class HomeCategoryFailure extends HomeState {
  final String errorMessage;

  HomeCategoryFailure({required this.errorMessage});
}
