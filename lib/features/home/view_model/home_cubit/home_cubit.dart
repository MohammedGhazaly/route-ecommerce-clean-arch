import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/use_cases/get_brands_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_categories_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  HomeCubit(
      {required this.getCategoriesUseCase, required this.getBrandsUseCase})
      : super(HomeCategoryLoading());
  List<CategoryOrBrandDataEntity> categoryData = [];
  List<CategoryOrBrandDataEntity> brandsData = [];

  Future<void> getCategories() async {
    emit(HomeCategoryLoading());

    var either = await getCategoriesUseCase.invoke();
    either.fold((l) {
      emit(HomeCategoryFailure(errorMessage: l.errorMessage!));
    }, (r) {
      categoryData = r.data ?? [];
      emit(
        HomeCategorySuccess(categoryOrBrandResponseEntity: r),
      );
    });
  }

  Future<void> getBrands() async {
    emit(HomeBrandsLoading());

    var either = await getBrandsUseCase.invoke();
    either.fold((l) {
      emit(HomeBrandsFailure(errorMessage: l.errorMessage!));
    }, (r) {
      brandsData = r.data ?? [];
      emit(
        HomeBrandsSuccess(categoryResponseEntity: r),
      );
    });
  }
}
