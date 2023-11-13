import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/data/repos/auth_repo/data_source/auth_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/auth_repo/repo/auth_repo_impl.dart';
import 'package:route_e_commerce/data/repos/cart_repo/data_soruce/cart_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/cart_repo/repo/cart_repo_impl.dart';
import 'package:route_e_commerce/data/repos/home_repo/data_source/home_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/home_repo/repo/home_repo_impl.dart';
import 'package:route_e_commerce/data/repos/product_repo/data_source/product_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/product_repo/repo/product_repo_impl.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/data_source/cart_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/cart_repo/repo/cart_remote_repo.dart';
import 'package:route_e_commerce/domain/repos/home_repo/data_source/home_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/home_repo/repo/home_repo.dart';
import 'package:route_e_commerce/domain/repos/product_repo/data_source/product_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/product_repo/repo/product_repo.dart';
import 'package:route_e_commerce/domain/use_cases/add_to_cart_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_brands_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_categories_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_products_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_user_cart_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/login_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/register_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/remove_item_use_case.dart';

// Auth Repo Injection
AuthRepo injectAuthRepo() {
  return AuthRepoImpl(authRemoteDataSource: injectAuthRemoteDataSource());
}

AuthRemoteDataSource injectAuthRemoteDataSource() {
  return AuthRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

LoginUseCase injectLoginUseCase() {
  return LoginUseCase(authRepo: injectAuthRepo());
}

RegisterUseCase injectRegisterUseCase() {
  return RegisterUseCase(authRepo: injectAuthRepo());
}

// Home Repo Injections
HomeRepo injectHomeRepo() {
  return HomeRepoImpl(homeRemoteDataSource: injectHomeRemoteDataSource());
}

HomeRemoteDataSource injectHomeRemoteDataSource() {
  return HomeRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

GetCategoriesUseCase injectGetCateegoriesUseCase() {
  return GetCategoriesUseCase(homeRepo: injectHomeRepo());
}

GetBrandsUseCase injectGetBrandsUseCase() {
  return GetBrandsUseCase(homeRepo: injectHomeRepo());
}

// Product Injections
ProductRemoteDataSource injectProductDataSource() {
  return ProductRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

ProductRepo injectProductRepo() {
  return ProductRepoImpl(productRemoteDataSource: injectProductDataSource());
}

GetProductsUseCase injectGetProductsUseCase() {
  return GetProductsUseCase(productRepo: injectProductRepo());
}

// Cart Injection
CartRemoteDataSource injectCartRemoteDataSource() {
  return CartRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}

CartRepo injectCartRepo() {
  return CartRepoImpl(cartRemoteDataSource: injectCartRemoteDataSource());
}

AddToCartUseCase injectAddToCartUseCase() {
  return AddToCartUseCase(cartRepo: injectCartRepo());
}

GetUserCartUseCase injectGetUserCartUseCase() {
  return GetUserCartUseCase(cartRepo: injectCartRepo());
}

RemoveItemUseCase injectRemoveItemUseCase() {
  return RemoveItemUseCase(cartRepo: injectCartRepo());
}
