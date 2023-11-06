import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failures, CategoryOrBrandResponseEntity>> getCategories();
  Future<Either<Failures, CategoryOrBrandResponseEntity>> getBrands();
}
