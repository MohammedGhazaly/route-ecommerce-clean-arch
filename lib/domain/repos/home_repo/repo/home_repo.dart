import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';

abstract class HomeRepo {
  Future<Either<Failures, CategoryResponseEntity>> getCategories();
}
