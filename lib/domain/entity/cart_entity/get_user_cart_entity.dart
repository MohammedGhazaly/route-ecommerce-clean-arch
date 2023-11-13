class GetUserCartResponseEntity {
  String? status;
  num? numOfCartItems;
  GetUserCartDataEntity? data;

  GetUserCartResponseEntity({this.status, this.numOfCartItems, this.data});
}

class GetUserCartDataEntity {
  String? sId;
  String? cartOwner;
  List<GetUserCartProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  num? iV;
  num? totalCartPrice;

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
  num? count;
  String? sId;
  GetUserCartProductEntity? product;
  num? price;

  GetUserCartProductsEntity({this.count, this.sId, this.product, this.price});
}

class GetUserCartProductEntity {
  String? sId;
  String? title;
  num? quantity;
  String? imageCover;
  num? ratingsAverage;
  String? id;

  GetUserCartProductEntity(
      {this.sId,
      this.title,
      this.quantity,
      this.imageCover,
      this.ratingsAverage,
      this.id});
}
