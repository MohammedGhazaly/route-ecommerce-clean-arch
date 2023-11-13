import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/data_source/cart_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/repo/cart_remote_repo.dart';

class CartRepoImpl extends CartRepo {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepoImpl({required this.cartRemoteDataSource});
  @override
  Future<Either<Failures, AddToCartResponseEntity>> addToCart(
      {required String productId}) async {
    //
    return cartRemoteDataSource.addToCart(productId: productId);
  }

  @override
  Future<Either<Failures, GetUserCartResponseEntity>> getUserCart() {
    return cartRemoteDataSource.getUserCart();
  }
}
