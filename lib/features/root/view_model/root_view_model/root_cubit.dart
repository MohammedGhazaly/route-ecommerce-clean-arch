import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:route_e_commerce/features/home/view/home_view.dart';
import 'package:route_e_commerce/features/profile/view/profile_view.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());
  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeView(),
    SizedBox(),
    SizedBox(),
    ProfileView(),
  ];

  void changeBottomNavigationIndex(int newIndex) {
    emit(RootInitial());
    selectedIndex = newIndex;
    emit(RootChangeBottomNavigationBar());
  }
}
