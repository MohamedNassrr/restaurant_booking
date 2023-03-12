import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/layout/home_cubit/cubit.dart';
import 'package:restaurant_booking_app/layout/home_cubit/state.dart';

class HomeLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state){},
      builder: (context, state){
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(child: Text('homeLayout')),
          bottomNavigationBar: BottomNavigationBar(
              items: const []
          ),
        );
      },
    );
  }
}
