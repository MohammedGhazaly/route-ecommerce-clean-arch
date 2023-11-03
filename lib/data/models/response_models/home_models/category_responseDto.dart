import 'package:route_e_commerce/data/models/response_models/home_models/category_dataDto.dart';
import 'package:route_e_commerce/data/models/response_models/home_models/category_meta_dataDto.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_entity.dart';

class CategoryResponseDto {
  int? results;
  CategoryMetaDataDto? metadata;
  List<CategoryDataDto>? data;
  String? statusMsg;
  String? message;

  CategoryResponseDto({
    this.results,
    this.metadata,
    this.data,
    this.statusMsg,
    this.message,
  });

  CategoryResponseDto.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    results = json['results'];
    metadata = json['metadata'] != null
        ? new CategoryMetaDataDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <CategoryDataDto>[];
      json['data'].forEach((v) {
        data!.add(new CategoryDataDto.fromJson(v));
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

  CategoryResponseEntity toCategoryResponseEntity() {
    return CategoryResponseEntity(
      data: data != null
          ? data!.map((catData) => catData.toCategoryDataEntity()).toList()
          : [],
      results: results,
    );
  }
}
