import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_e_commerce/features/root/view_model/root_view_model/root_cubit.dart';
import 'package:route_e_commerce/features/root/view/widgets/custom_bottom_navigation_bar.dart';

class RootView extends StatelessWidget {
  static String routeName = "rootView";
  RootCubit rootCubit = RootCubit();

  RootView({super.key});

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
