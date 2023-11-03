import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/use_cases/get_categories_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  HomeCubit({required this.getCategoriesUseCase})
      : super(HomeCategoryLoading());
  List<CategoryDataEntity> categoryData = [];
  void getCategories() async {
    emit(HomeCategoryLoading());

    var either = await getCategoriesUseCase.invoke();
    either.fold((l) {
      emit(HomeCategoryFailure(errorMessage: l.errorMessage!));
    }, (r) {
      categoryData = r.data ?? [];
      emit(
        HomeCategorySuccess(categoryResponseEntity: r),
      );
    });
  }
}
