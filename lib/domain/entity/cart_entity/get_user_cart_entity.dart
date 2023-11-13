class GetUserCartResponseEntity {
  String? status;
  int? numOfCartItems;
  GetUserCartDataEntity? data;

  GetUserCartResponseEntity({this.status, this.numOfCartItems, this.data});
}

class GetUserCartDataEntity {
  String? sId;
  String? cartOwner;
  List<GetUserCartProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? totalCartPrice;

  GetUserCartDataEntity(
      {this.sId,
      this.cartOwner,
      this.products,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalCartPrice});
}

class GetUserCartProductsEntity {
  int? count;
  String? sId;
  GetUserCartProductEntity? product;
  int? price;

  GetUserCartProductsEntity({this.count, this.sId, this.product, this.price});
}

class GetUserCartProductEntity {
  String? sId;
  String? title;
  int? quantity;
  String? imageCover;
  double? ratingsAverage;
  String? id;

  GetUserCartProductEntity(
      {this.sId,
      this.title,
      this.quantity,
      this.imageCover,
      this.ratingsAverage,
      this.id});
}