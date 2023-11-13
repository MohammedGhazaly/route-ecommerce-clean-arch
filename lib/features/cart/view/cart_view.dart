import 'package:flutter/material.dart';
import 'package:route_e_commerce/features/cart/view/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  static String routeName = "cart-view";
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartViewBody(),
    );
  }
}
