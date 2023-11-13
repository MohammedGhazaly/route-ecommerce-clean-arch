import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/use_cases/add_to_cart_use_case.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUseCase addToCartUseCase;
  CartCubit({required this.addToCartUseCase}) : super(CartInitial());
  bool isAdding = false;
  int numberOfCartItems = 0;

  Future<void> addToCart({required String productId}) async {
    isAdding = true;
    emit(AddingItemToCart());
    var either = await addToCartUseCase.invoke(productId: productId);
    return either.fold((l) {
      isAdding = false;

      emit(CartFailure(
          errorMessage:
              l.errorMessage ?? "Something went wrong, try again later."));
    }, (r) {
      isAdding = false;
      numberOfCartItems = r.numOfCartItems ?? 0;
      emit(CartItemAdded(addToCartResponse: r));
    });
  }
}
