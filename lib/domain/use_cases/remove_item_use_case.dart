import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/remove_item_response_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/repo/cart_remote_repo.dart';

class RemoveItemUseCase {
  final CartRepo cartRepo;

  RemoveItemUseCase({required this.cartRepo});
  Future<Either<Failures, RemoveItemResponseEntity>> invoke(
      {required String productId}) async {
    return cartRepo.removeItem(productId: productId);
  }
}
