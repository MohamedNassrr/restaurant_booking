import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/layout/home_cubit/state.dart';
import 'package:restaurant_booking_app/modules/login_module/login_screen.dart';
import 'package:restaurant_booking_app/modules/register_module/register_screen.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(HomeChangeBottomNavBarSuccessState());
  }
}