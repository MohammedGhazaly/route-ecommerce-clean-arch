import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/features/home/view/home_view.dart';
import 'package:route_e_commerce/features/product_list/view/product_list_view.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeView(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  void changeBottomNavigationIndex(int newIndex) {
    emit(RootInitial());
    selectedIndex = newIndex;
    emit(RootChangeBottomNavigationBar());
  }
}
