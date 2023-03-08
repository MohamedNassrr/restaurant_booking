import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/bloc_observer.dart';
import 'package:restaurant_booking_app/modules/login_module/login_screen.dart';
import 'package:restaurant_booking_app/shared/style/theme.dart';

void main() {
  BlocOverrides.runZoned(
        () async {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: LoginScreen(),
    );
  }
}

