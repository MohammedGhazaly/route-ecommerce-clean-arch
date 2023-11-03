import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_meta_data.dart';

class CategoryResponseEntity {
  int? results;
  CategoryMetaData? metadata;
  List<CategoryDataEntity>? data;

  CategoryResponseEntity({this.results, this.metadata, this.data});
}
