import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/domain/repos/product_repo/data_source/product_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/product_repo/repo/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  ProductRemoteDataSource productRemoteDataSource;
  ProductRepoImpl({required this.productRemoteDataSource});
  @override
  Future<Either<Failures, ProductResponseEntity>> getProducts(
      {String? brandId, String? categoryId}) {
    return productRemoteDataSource.getProducts(
        brandId: brandId, categoryId: categoryId);
  }
}
