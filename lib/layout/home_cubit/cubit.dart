import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/layout/home_cubit/state.dart';
import 'package:restaurant_booking_app/modules/near_location_module/near_location.dart';
import 'package:restaurant_booking_app/modules/profile_module/profile_screen.dart';
import 'package:restaurant_booking_app/modules/restaurants_module/restaurant_screen.dart';
import 'package:restaurant_booking_app/modules/visited_place_module/visited_place.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    RestaurantScreen(),
    NearLocationScreen(),
    VisitedPlaceScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(HomeChangeBottomNavBarSuccessState());
  }
}