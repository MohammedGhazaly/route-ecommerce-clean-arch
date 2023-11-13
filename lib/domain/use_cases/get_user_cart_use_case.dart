import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/repo/cart_remote_repo.dart';

class GetUserCartUseCase {
  final CartRepo cartRepo;

  GetUserCartUseCase({required this.cartRepo});
  Future<Either<Failures, GetUserCartResponseEntity>> invoke() async {
    return await cartRepo.getUserCart();
  }
}
