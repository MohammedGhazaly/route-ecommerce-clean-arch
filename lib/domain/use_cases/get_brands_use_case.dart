import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/repos/home_repo/repo/home_repo.dart';

class GetBrandsUseCase {
  HomeRepo homeRepo;
  GetBrandsUseCase({required this.homeRepo});

  Future<Either<Failures, CategoryOrBrandResponseEntity>> invoke() {
    return homeRepo.getBrands();
  }
}
