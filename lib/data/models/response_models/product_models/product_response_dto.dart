import 'package:route_e_commerce/data/models/response_models/home_models/category_dataDto.dart';
import 'package:route_e_commerce/domain/entity/home_entity/category_data_entity.dart';
import 'package:route_e_commerce/domain/entity/product_entity/product_response_entity.dart';

class ProductResponseDto {
  num? results;
  MetadataDto? metadata;
  List<ProductDto>? data;
  String? message;

  ProductResponseDto({this.results, this.metadata, this.data, this.message});

  ProductResponseDto.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    results = json['results'];
    metadata = json['metadata'] != null
        ? new MetadataDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <ProductDto>[];
      json['data'].forEach((v) {
        data!.add(new ProductDto.fromJson(v));
      });
    }
  }

  ProductResponseEntity toProductResponseEntity() {
    return ProductResponseEntity(
      data: data != null
          ? data!.map((catData) => catData.toProudctEntity()).toList()
          : [],
      results: results,
      metadata: metadata?.toMetaDataEntity() ?? MetaDataEntity(),
    );
  }
}

class MetadataDto {
  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  MetadataDto(
      {this.currentPage, this.numberOfPages, this.limit, this.nextPage});

  MetadataDto.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }

  MetaDataEntity toMetaDataEntity() {
    return MetaDataEntity(
      currentPage: currentPage,
      numberOfPages: numberOfPages,
      limit: limit,
      nextPage: nextPage,
    );
  }
}

class ProductDto {
  num? sold;
  List<String>? images;
  List<SubcategoryDto>? subcategory;
  num? ratingsQuantity;
  String? sId;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  String? imageCover;
  CategoryOrBrandDataDto? category;
  CategoryOrBrandDataDto? brand;
  num? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  String? id;
  num? priceAfterDiscount;

  ProductDto({
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

  ProductDto.fromJson(Map<String, dynamic> json) {
    sold = json['sold'];
    images = json['images'].cast<String>();
    if (json['subcategory'] != null) {
      subcategory = <SubcategoryDto>[];
      json['subcategory'].forEach((v) {
        subcategory!.add(new SubcategoryDto.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    sId = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? new CategoryOrBrandDataDto.fromJson(json['category'])
        : null;
    brand = json['brand'] != null
        ? new CategoryOrBrandDataDto.fromJson(json['brand'])
        : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    priceAfterDiscount = json['priceAfterDiscount'];
  }
  ProductEntity toProudctEntity() {
    return ProductEntity(
      sold: sold,
      images: images,
      subcategory: subcategory != null
          ? subcategory!
              .map((catData) => catData.toSubCategoryEntity())
              .toList()
          : [],
      ratingsQuantity: ratingsQuantity,
      sId: sId,
      title: title,
      slug: slug,
      description: description,
      quantity: quantity,
      price: price,
      imageCover: imageCover,
      category: category?.toCategoryOrBrandsResponseDataEntity() ??
          CategoryOrBrandDataEntity(),
      brand: brand?.toCategoryOrBrandsResponseDataEntity() ??
          CategoryOrBrandDataEntity(),
      ratingsAverage: ratingsAverage,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      priceAfterDiscount: priceAfterDiscount,
    );
  }
}

class SubcategoryDto {
  String? sId;
  String? name;
  String? slug;
  String? category;

  SubcategoryDto({this.sId, this.name, this.slug, this.category});

  SubcategoryDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }
  SubCategoryEntity toSubCategoryEntity() {
    return SubCategoryEntity(
        sId: sId, name: name, slug: slug, category: category);
  }
}
