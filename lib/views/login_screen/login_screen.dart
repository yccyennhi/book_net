import 'dart:developer';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:book_net/views/login_screen/widgets/button/facebook_button.dart';
import 'package:book_net/views/login_screen/widgets/button/google_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var loginBloc;
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset('assets/images/LogoHorizontal.png'),
              const SizedBox(
                height: 52,
              ),
              CustomTextField(
                text: 'E-mail address',
                controller: userController,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                text: 'Password',
                controller: passController,
              ),
              const SizedBox(
                height: 12,
              ),
              //  CustomTextField(
              //   text: 'Password',
              // ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: const Text('Forgot your password?',
                      style: TextStyle(fontSize: TextConfigs.textSizeSm)),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              RaisedGradientButton(
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: TextConfigs.textSizeMd,
                        fontWeight: FontWeight.w500),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      AppColors.green2Color,
                      AppColors.green1Color,
                    ],
                  ),
                  onPressed: () {
                    log('button click');
                    print('button clicked print');
                  }),
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/or.png'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Flexible(child: FacebookButton(), flex: 1),
                  SizedBox(
                    width: 56,
                  ),
                  Flexible(child: GoogleButton(), flex: 1),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?',
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: TextConfigs.textSizeSm)),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign up',
                        style: TextStyle(fontSize: TextConfigs.textSizeSm)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
