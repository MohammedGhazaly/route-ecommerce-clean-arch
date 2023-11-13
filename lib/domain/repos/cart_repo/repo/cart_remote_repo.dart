import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';

abstract class CartRepo {
  Future<Either<Failures, AddToCartResponseEntity>> addToCart({
    required String productId,
  });
}
