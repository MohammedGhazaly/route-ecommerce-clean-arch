import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';
import 'package:route_e_commerce/domain/repos/home_repo/data_source/home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  ApiManager apiManager;
  HomeRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, CategoryResponseEntity>> getCategories() async {
    var either = await apiManager.getCategories();
    return either.fold((l) {
      return Left<Failures, CategoryResponseEntity>(l);
    }, (r) {
      return Right<Failures, CategoryResponseEntity>(
          r.toCategoryResponseEntity());
    });
  }
}
