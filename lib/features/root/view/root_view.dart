import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/features/root/view_model/root_view_model/root_cubit.dart';
import 'package:route_e_commerce/features/root/view/widgets/custom_bottom_navigation_bar.dart';

class RootView extends StatefulWidget {
  static String routeName = "rootView";

  RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  RootCubit rootCubit = RootCubit();

  @override
  void initState() {
    // TODO: implement initState
    getUserCart();
    super.initState();
  }

  Future<void> getUserCart() async {
    await BlocProvider.of<CartCubit>(context).getUserCart();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      bloc: rootCubit,
      builder: (context, state) {
        return Scaffold(
          body: rootCubit.screens[rootCubit.selectedIndex],
          bottomNavigationBar: buildCustomBottomNavigationBar(
            context: context,
            selectedIndex: rootCubit.selectedIndex,
            onTapFunction: (index) {
              rootCubit.changeBottomNavigationIndex(index);
            },
          ),
        );
      },
    );
  }
}
