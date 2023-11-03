import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/repos/home_repo/data_source/home_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/home_repo/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImpl({required this.homeRemoteDataSource});
  @override
  Future<Either<Failures, CategoryResponseEntity>> getCategories() {
    return homeRemoteDataSource.getCategories();
  }
}
