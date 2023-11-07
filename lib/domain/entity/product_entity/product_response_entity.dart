import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';

class ProductResponseEntity {
  num? results;
  MetaDataEntity? metadata;
  List<ProductEntity>? data;

  ProductResponseEntity({this.results, this.metadata, this.data});
}

class MetaDataEntity {
  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  MetaDataEntity(
      {this.currentPage, this.numberOfPages, this.limit, this.nextPage});
}

class ProductEntity {
  num? sold;
  List<String>? images;
  List<SubCategoryEntity>? subcategory;
  num? ratingsQuantity;
  String? sId;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  String? imageCover;
  CategoryOrBrandDataEntity? category;
  CategoryOrBrandDataEntity? brand;
  num? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  String? id;
  num? priceAfterDiscount;

  ProductEntity({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.sId,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.priceAfterDiscount,
  });
}

class SubCategoryEntity {
  String? sId;
  String? name;
  String? slug;
  String? category;

  SubCategoryEntity({this.sId, this.name, this.slug, this.category});
}
