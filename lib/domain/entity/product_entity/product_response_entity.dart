import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';

class ProductResponseEntity {
  int? results;
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
  int? sold;
  List<String>? images;
  List<SubCategoryEntity>? subcategory;
  int? ratingsQuantity;
  String? sId;
  String? title;
  String? slug;
  String? description;
  int? quantity;
  int? price;
  String? imageCover;
  CategoryOrBrandDataEntity? category;
  CategoryOrBrandDataEntity? brand;
  double? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  String? id;
  int? priceAfterDiscount;

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
