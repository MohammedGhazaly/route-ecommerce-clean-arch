import 'package:route_e_commerce/data/models/response_models/home_models/category_dataDto.dart';

class ProductResponseDto {
  int? results;
  MetadataDto? metadata;
  List<ProductDto>? data;

  ProductResponseDto({this.results, this.metadata, this.data});

  ProductResponseDto.fromJson(Map<String, dynamic> json) {
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
}

class ProductDto {
  int? sold;
  List<String>? images;
  List<SubcategoryDto>? subcategory;
  int? ratingsQuantity;
  String? sId;
  String? title;
  String? slug;
  String? description;
  int? quantity;
  int? price;
  String? imageCover;
  CategoryOrBrandDataDto? category;
  CategoryOrBrandDataDto? brand;
  double? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  String? id;
  int? priceAfterDiscount;

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
}
