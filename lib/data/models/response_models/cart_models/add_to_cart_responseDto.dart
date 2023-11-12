import 'package:route_e_commerce/domain/entity/cart_entity/add_to_cart_response_entity.dart';

class AddToCartResponseDto extends AddToCartResponseEntity {
  AddToCartResponseDto(
      {super.status, super.message, super.numOfCartItems, super.data});

  AddToCartResponseDto.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    data =
        json['data'] != null ? new AddDataCartDto.fromJson(json['data']) : null;
  }
}

class AddDataCartDto extends AddDataCartEntity {
  AddDataCartDto(
      {super.sId,
      super.cartOwner,
      super.products,
      super.createdAt,
      super.updatedAt,
      super.iV,
      super.totalCartPrice});

  AddDataCartDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = <AddDataCartProductDto>[];
      json['products'].forEach((v) {
        products!.add(new AddDataCartProductDto.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class AddDataCartProductDto extends AddDataCartProductEntity {
  AddDataCartProductDto({super.count, super.sId, super.product, super.price});

  AddDataCartProductDto.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product = json['product'];
    price = json['price'];
  }
}
