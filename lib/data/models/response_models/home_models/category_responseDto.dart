import 'package:route_e_commerce/data/models/response_models/home_models/category_dataDto.dart';
import 'package:route_e_commerce/data/models/response_models/home_models/category_meta_dataDto.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';

class CategoryOrBrandResponseDto {
  int? results;
  CategoryOrBrandMetaDataDto? metadata;
  List<CategoryOrBrandDataDto>? data;
  String? statusMsg;
  String? message;

  CategoryOrBrandResponseDto({
    this.results,
    this.metadata,
    this.data,
    this.statusMsg,
    this.message,
  });

  CategoryOrBrandResponseDto.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    results = json['results'];
    metadata = json['metadata'] != null
        ? new CategoryOrBrandMetaDataDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <CategoryOrBrandDataDto>[];
      json['data'].forEach((v) {
        data!.add(new CategoryOrBrandDataDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  CategoryOrBrandResponseEntity toCategoryOrBrandsResponseEntity() {
    return CategoryOrBrandResponseEntity(
      data: data != null
          ? data!
              .map((catData) => catData.toCategoryOrBrandsResponseDataEntity())
              .toList()
          : [],
      results: results,
    );
  }
}
