class AddToCartResponseEntity {
  String? status;
  String? message;
  int? numOfCartItems;
  AddDataCartEntity? data;

  AddToCartResponseEntity(
      {this.status, this.message, this.numOfCartItems, this.data});
}

class AddDataCartEntity {
  String? sId;
  String? cartOwner;
  List<AddDataCartProductEntity>? products;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? totalCartPrice;

  AddDataCartEntity(
      {this.sId,
      this.cartOwner,
      this.products,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalCartPrice});
}

class AddDataCartProductEntity {
  int? count;
  String? sId;
  String? product;
  int? price;

  AddDataCartProductEntity({this.count, this.sId, this.product, this.price});
}
