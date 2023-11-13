import 'package:route_e_commerce/domain/entity/cart_entity/get_user_cart_entity.dart';

class GetUserCartResponseDto extends GetUserCartResponseEntity {
  String? message;
  GetUserCartResponseDto(
      {super.status, super.numOfCartItems, super.data, this.message});

  GetUserCartResponseDto.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null
        ? new GetUserCartDataDto.fromJson(json['data'])
        : null;
  }
}

class GetUserCartDataDto extends GetUserCartDataEntity {
  GetUserCartDataDto(
      {super.sId,
      super.cartOwner,
      super.products,
      super.createdAt,
      super.updatedAt,
      super.iV,
      super.totalCartPrice});

  GetUserCartDataDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = <GetUserCartProductsDto>[];
      json['products'].forEach((v) {
        products!.add(new GetUserCartProductsDto.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }
}

class GetUserCartProductsDto extends GetUserCartProductsEntity {
  GetUserCartProductsDto({super.count, super.sId, super.product, super.price});

  GetUserCartProductsDto.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    sId = json['_id'];
    product = json['product'] != null
        ? new GetUserCartProductDto.fromJson(json['product'])
        : null;
    price = json['price'];
  }
}

class GetUserCartProductDto extends GetUserCartProductEntity {
  GetUserCartProductDto(
      {super.sId,
      super.title,
      super.quantity,
      super.imageCover,
      super.ratingsAverage,
      super.id});

  GetUserCartProductDto.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    quantity = json['quantity'];
    imageCover = json['imageCover'];

    ratingsAverage = json['ratingsAverage'];
  }
}
