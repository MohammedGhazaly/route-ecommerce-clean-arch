import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/repo/cart_remote_repo.dart';

class AddToCartUseCase {
  final CartRepo cartRepo;

  AddToCartUseCase({required this.cartRepo});
  Future<Either<Failures, AddToCartResponseEntity>> invoke(
      {required String productId}) async {
    return cartRepo.addToCart(productId: productId);
  }
}
