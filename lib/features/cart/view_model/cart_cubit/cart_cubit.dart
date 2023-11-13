import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/domain/use_cases/add_to_cart_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_user_cart_use_case.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUseCase addToCartUseCase;
  final GetUserCartUseCase getUserCartUseCase;
  CartCubit({required this.getUserCartUseCase, required this.addToCartUseCase})
      : super(CartInitial());
  bool isAdding = false;
  num numberOfCartItems = 0;

  static CartCubit get(context) => BlocProvider.of(context);

  Future<void> addToCart({required String productId}) async {
    isAdding = true;
    emit(AddingItemToCart());
    var either = await addToCartUseCase.invoke(productId: productId);
    return either.fold((l) {
      isAdding = false;

      emit(AddItemToCartFailure(
          errorMessage:
              l.errorMessage ?? "Something went wrong, try again later."));
    }, (r) async {
      isAdding = false;
      numberOfCartItems = r.numOfCartItems ?? 0;
      emit(CartItemAdded(addToCartResponse: r));
    });
  }

  Future<void> getUserCart() async {
    emit(UserCartLoading());
    var either = await getUserCartUseCase.invoke();
    return either.fold((l) {
      if (l.errorMessage!.split(":")[0] == "No cart exist for this user") {
        emit(UserCartEmpty());
      } else {
        emit(UserCartFailure(errorMessage: l.errorMessage ?? ""));
      }
    }, (r) {
      numberOfCartItems = r.numOfCartItems ?? 0;

      emit(UserCartSuccess(getUserCartResponseEntity: r));
    });
  }
}
