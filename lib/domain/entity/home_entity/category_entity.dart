import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_meta_data.dart';

class CategoryOrBrandResponseEntity {
  int? results;
  CategoryOrBrandMetaDataEntity? metadata;
  List<CategoryOrBrandDataEntity>? data;

  CategoryOrBrandResponseEntity({this.results, this.metadata, this.data});
}
