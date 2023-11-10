import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/domain/repos/product_repo/data_source/product_remote_data_source.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ApiManager apiManager;
  ProductRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, ProductResponseEntity>> getProducts(
      {String? brandId, String? categoryId}) async {
    var either =
        await apiManager.getProducts(brandId: brandId, categoryId: categoryId);
    return either.fold((l) {
      return Left<Failures, ProductResponseEntity>(l);
    }, (r) {
      return Right<Failures, ProductResponseEntity>(
          r.toProductResponseEntity());
    });
  }
}
