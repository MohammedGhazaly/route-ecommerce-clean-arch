class SubtractCartResponseEntity {
  String? status;
  num? numOfCartItems;
  SubtractCartDataEntity? data;

  SubtractCartResponseEntity({this.status, this.numOfCartItems, this.data});
}

class SubtractCartDataEntity {
  String? sId;
  String? cartOwner;
  List<SubtractCartProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  num? iV;
  num? totalCartPrice;

  SubtractCartDataEntity(
      {this.sId,
      this.cartOwner,
      this.products,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalCartPrice});
}

class SubtractCartProductsEntity {
  num? count;
  String? sId;
  SubtractCartProductEntity? product;
  num? price;

  SubtractCartProductsEntity({this.count, this.sId, this.product, this.price});
}

class SubtractCartProductEntity {
  String? sId;
  String? title;
  num? quantity;
  String? imageCover;
  num? ratingsAverage;
  String? id;

  SubtractCartProductEntity(
      {this.sId,
      this.title,
      this.quantity,
      this.imageCover,
      this.ratingsAverage,
      this.id});
}
