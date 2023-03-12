import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/modules/login_module/login_screen.dart';
import 'package:restaurant_booking_app/modules/register_module/register_screen.dart';
import 'package:restaurant_booking_app/modules/reset_password_module/reset_pass_cubit/cubit.dart';
import 'package:restaurant_booking_app/modules/reset_password_module/reset_pass_cubit/state.dart';
import 'package:restaurant_booking_app/shared/components/components.dart';

class ResetPasswordScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
        listener: (context, state){
          if(state is ResetPasswordSuccessState){
            navigateTo(context, LoginScreen());
          }
        },
        builder: (context, state){
          return Scaffold(
            appBar: AppBar(),
            body: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        25.ph,
                        Text(
                          'Reset Your Password',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        40.ph,
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Email is Incorrect';
                            }
                          },
                          label: 'Enter Email',
                          prefix: Icons.email_outlined,
                        ),
                        30.ph,
                        Center(
                          child: defaultBottom(
                              function: (){
                                ResetPasswordCubit.get(context).resetUser(
                                    email: emailController.text,
                                );
                              },
                              text: 'Reset Password',
                              width: 250.0
                          ),
                        ),
                        20.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                'Don\'t Have An Account yet?'
                            ),
                            defaultTextBottom(
                              function: (){
                                navigateTo(context, RegisterScreen());
                              },
                              text: 'Register',),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
