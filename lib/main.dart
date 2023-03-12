import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/bloc_observer.dart';
import 'package:restaurant_booking_app/firebase_options.dart';
import 'package:restaurant_booking_app/layout/home_cubit/cubit.dart';
import 'package:restaurant_booking_app/layout/home_cubit/state.dart';
import 'package:restaurant_booking_app/modules/login_module/login_cubit/cubit.dart';
import 'package:restaurant_booking_app/modules/login_module/login_screen.dart';
import 'package:restaurant_booking_app/modules/register_module/register_cubit/cubit.dart';
import 'package:restaurant_booking_app/shared/style/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => HomeCubit(),
        ),
      ],
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state){},
        builder: (context, state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}

