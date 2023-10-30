import 'package:flutter/material.dart';
import 'package:route_e_commerce/features/views/home/home_view.dart';
import 'package:route_e_commerce/features/views/product_list/product_list_view.dart';
import 'package:route_e_commerce/features/views/root/widgets/custom_bottom_navigation_bar.dart';

class RootView extends StatefulWidget {
  static String routeName = "rootView";

  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeView(),
    ProductListView(),
    SizedBox(),
    SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: buildCustomBottomNavigationBar(
          context: context,
          selectedIndex: selectedIndex,
          onTapFunction: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    );
  }
}
