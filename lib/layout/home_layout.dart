import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/layout/home_cubit/cubit.dart';
import 'package:restaurant_booking_app/layout/home_cubit/state.dart';
import 'package:restaurant_booking_app/shared/style/icon_broken.dart';

class HomeLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state){},
      builder: (context, state){
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      IconBroken.Home,
                    ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      IconBroken.Location,
                    ),
                  label: 'Map',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      IconBroken.Time_Circle,
                    ),
                  label: 'Recent',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      IconBroken.Profile,
                    ),
                  label: 'Profile',
                ),
              ]
          ),
        );
      },
    );
  }
}
