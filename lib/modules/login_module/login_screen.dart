import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/shared/components/components.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Log in',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                    ),
              ),
              45.ph,
              defaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validate: (value) {},
                label: 'Email Address',
                prefix: Icons.email_outlined,
              ),
              15.ph,
              defaultFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                validate: (value) {},
                label: 'Password',
                prefix: Icons.lock_outline,
              ),
              7.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  defaultTextBottom(
                    function: () {},
                    text: 'Reset Password?',
                    textColor: Colors.black,
                  ),
                ],
              ),
              10.ph,
              Center(
                child: defaultBottom(
                  function: () {},
                  text: 'Login',
                  width: 250.0,
                ),
              ),
              20.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account yet?',
                  ),
                  defaultTextBottom(
                    function: () {},
                    text: 'Register',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
