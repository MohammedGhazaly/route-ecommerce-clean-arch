import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';

abstract class ProductRemoteDataSource {
  Future<Either<Failures, ProductResponseEntity>> getProducts();
}