import 'package:route_e_commerce/data/models/response_models/home_models/category_dataDto.dart';
import 'package:route_e_commerce/data/models/response_models/home_models/category_meta_dataDto.dart';

class CategoryResponseDto {
  int? results;
  CategoryMetaDataDto? metadata;
  List<CategoryDataDto>? data;

  CategoryResponseDto({this.results, this.metadata, this.data});

  CategoryResponseDto.fromJson(Map<String, dynamic> json) {
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
}
