import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/domain/use_cases/get_products_use_case.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  final GetProductsUseCase getProductsUseCase;
  ProductListCubit({required this.getProductsUseCase})
      : super(ProductListLoading());

  Future<void> getProducts({String? categoryId, String? brandId}) async {
    var either = await getProductsUseCase.invoke(
        brandId: brandId, categoryId: categoryId);
    return either.fold((l) {
      emit(ProductListFailure(
          errorMessage:
              l.errorMessage ?? "Something went wrong, try again later."));
    }, (r) {
      if (r.data!.isEmpty) {
        emit(ProductEmpty());
      } else {
        emit(ProductListSuccess(products: r.data ?? []));
      }
    });
  }
}
