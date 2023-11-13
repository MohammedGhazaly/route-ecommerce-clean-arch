class RemoveItemResponseEntity {
  String? status;
  int? numOfCartItems;
  RemoveItemDataEntity? data;

  RemoveItemResponseEntity({this.status, this.numOfCartItems, this.data});
}

class RemoveItemDataEntity {
  String? sId;
  String? cartOwner;
  List<RemoveItemProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? totalCartPrice;

  RemoveItemDataEntity(
      {this.sId,
      this.cartOwner,
      this.products,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalCartPrice});
}

class RemoveItemProductsEntity {
  int? count;
  String? sId;
  RemoveItemProductEntity? product;
  int? price;

  RemoveItemProductsEntity({this.count, this.sId, this.product, this.price});
}

class RemoveItemProductEntity {
  String? sId;
  String? title;
  int? quantity;
  String? imageCover;
  double? ratingsAverage;
  String? id;

  RemoveItemProductEntity(
      {this.sId,
      this.title,
      this.quantity,
      this.imageCover,
      this.ratingsAverage,
      this.id});
}
