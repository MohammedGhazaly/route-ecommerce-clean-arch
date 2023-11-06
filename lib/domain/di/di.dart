import 'package:route_e_commerce/data/api/api_manager.dart';
import 'package:route_e_commerce/data/repos/auth_repo/data_source/auth_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/auth_repo/repo/auth_repo_impl.dart';
import 'package:route_e_commerce/data/repos/home_repo/data_source/home_remote_data_source_impl.dart';
import 'package:route_e_commerce/data/repos/home_repo/repo/home_repo_impl.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/data_source/auth_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/auth_repo/repo/auth_repo.dart';
import 'package:route_e_commerce/domain/repos/home_repo/data_source/home_remote_data_source.dart';
import 'package:route_e_commerce/domain/repos/home_repo/repo/home_repo.dart';
import 'package:route_e_commerce/domain/use_cases/get_brands_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/get_categories_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/login_use_case.dart';
import 'package:route_e_commerce/domain/use_cases/register_use_case.dart';

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
