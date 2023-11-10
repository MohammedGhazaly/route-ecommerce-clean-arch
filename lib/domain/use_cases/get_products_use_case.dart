import 'package:dartz/dartz.dart';
import 'package:route_e_commerce/domain/entity/failures.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';
import 'package:route_e_commerce/domain/repos/product_repo/repo/product_repo.dart';

class GetProductsUseCase {
  ProductRepo productRepo;
  GetProductsUseCase({required this.productRepo});

  Future<Either<Failures, ProductResponseEntity>> invoke(
      {String? brandId, String? categoryId}) {
    return productRepo.getProducts(brandId: brandId, categoryId: categoryId);
  }
}
