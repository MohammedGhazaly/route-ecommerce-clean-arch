import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/repos/home_repo/repo/home_repo.dart';

class GetCategoriesUseCase {
  HomeRepo homeRepo;
  GetCategoriesUseCase({required this.homeRepo});

  Future<Either<Failures, CategoryResponseEntity>> invoke() {
    return homeRepo.getCategories();
  }
}
