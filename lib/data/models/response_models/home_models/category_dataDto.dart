import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';

class CategoryOrBrandDataDto {
  String? sId;
  String? name;
  String? slug;
  String? image;
  String? createdAt;
  String? updatedAt;

  CategoryOrBrandDataDto(
      {this.sId,
      this.name,
      this.slug,
      this.image,
      this.createdAt,
      this.updatedAt});

  CategoryOrBrandDataDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }

  CategoryOrBrandDataEntity toCategoryOrBrandsResponseDataEntity() {
    return CategoryOrBrandDataEntity(
        image: image,
        createdAt: createdAt,
        name: name,
        slug: slug,
        sId: sId,
        updatedAt: updatedAt);
  }
}
