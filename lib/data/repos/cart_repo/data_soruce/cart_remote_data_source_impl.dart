import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/data_source/cart_remote_data_source.dart';

class CartRemoteDataSourceImpl extends CartRemoteDataSource {
  final ApiManager apiManager;

  CartRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, AddToCartResponseEntity>> addToCart(
      {required String productId}) async {
    var either = await apiManager.addToCart(productId: productId);
    return either.fold((l) {
      return Left<Failures, AddToCartResponseEntity>(l);
    }, (r) {
      return Right<Failures, AddToCartResponseEntity>(r);
    });
  }
}
