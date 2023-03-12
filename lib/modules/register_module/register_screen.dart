import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/layout/home_layout.dart';
import 'package:restaurant_booking_app/modules/login_module/login_screen.dart';
import 'package:restaurant_booking_app/modules/register_module/register_cubit/cubit.dart';
import 'package:restaurant_booking_app/modules/register_module/register_cubit/state.dart';
import 'package:restaurant_booking_app/shared/components/components.dart';

class RegisterScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state){
          if(state is RegisterUserCreateSuccessState){
            navigateAndFinish(context, HomeLayout());
          }
        },
        builder: (context, state){
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        35.ph,
                        //-------- start of userName_form_field
                        defaultFormField(
                          controller: userNameController,
                          type: TextInputType.text,
                          validate: (value){
                            if(value.isEmpty){
                              return 'wrong username!';
                            }
                          },
                          label: 'Username',
                          prefix: Icons.person,
                        ),
                        //-------- end of userName_form_field
                        15.ph,
                        //------- start of email_form_field
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (value){
                            if(value.isEmpty){
                              return 'email address is incorrect';
                            }
                          },
                          label: 'Email address',
                          prefix: Icons.email_outlined,
                        ),
                        //------- end of email_form_field
                        15.ph,
                        //-------- start password and confirm password form_field
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: defaultFormField(
                                  controller: passwordController,
                                  type: TextInputType.visiblePassword,
                                  isPassword: RegisterCubit.get(context).isPassword,
                                  validate: (value) {
                                    if (value.isEmpty) {
                                      return 'Password is too short';
                                    }

                                  },
                                  label: 'Password',
                                  prefix: Icons.lock_outline,
                                  suffix: RegisterCubit.get(context).suffix,
                                  suffixPressed: () {
                                    RegisterCubit.get(context).changePasswordVisibility();
                                  },
                                ),
                            ),
                            10.pw,
                            Expanded(
                              child: defaultFormField(
                                controller: confirmPasswordController,
                                type: TextInputType.visiblePassword,
                                isPassword: RegisterCubit.get(context).isPassword,
                                validate: (value) {
                                  if (value != passwordController.text) {
                                    return 'Password didn\'t match';
                                  }
                                },
                                label: 'Confirm',
                                prefix: Icons.lock_outline,
                                suffix: RegisterCubit.get(context).suffix,
                                suffixPressed: () {
                                  RegisterCubit.get(context).changePasswordVisibility();
                                },
                              ),
                            ),
                          ],
                        ),
                        //-------- end password and confirm password form_field
                        15.ph,
                        //-------- start phone form_field
                        defaultFormField(
                            controller: phoneController,
                            type: TextInputType.phone,
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'phone is wrong';
                              }
                            },
                            label: 'Phone',
                            prefix: Icons.phone,
                        ),
                        //-------- end phone form_field
                        20.ph,
                        Center(
                          child: ConditionalBuilder(
                            condition: state is! RegisterLoadingState,
                            builder: (context) => defaultBottom(
                              function: (){
                                if(formKey.currentState!.validate()){
                                  RegisterCubit.get(context).userRegister(
                                    name: userNameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    phone: phoneController.text,
                                  );
                                }
                              },
                              text: 'Register',
                              width: 250.0,
                            ),
                            fallback: (context) => const Center(child: CircularProgressIndicator()),
                          ),
                        ),
                        20.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already Have An Account?',
                            ),
                            defaultTextBottom(
                              function: () {
                                navigateTo(context, LoginScreen());
                              },
                              text: 'Login',
                            ),
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
