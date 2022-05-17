import 'dart:developer';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:book_net/views/login_screen/widgets/button/facebook_button.dart';
import 'package:book_net/views/login_screen/widgets/button/google_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      onTap: () => setUnfocus(context),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset('assets/images/LogoHorizontal.png'),
              SizedBox(
                height: 52.h,
              ),
              CustomTextField(
                text: 'E-mail address',
                controller: userController,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                text: 'Password',
                controller: passController,
              ),
              SizedBox(
                height: 12.h,
              ),
              //  CustomTextField(
              //   text: 'Password',
              // ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: Text('Forgot your password?',
                      style: TextConfigs.regular12Grey2),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              RaisedGradientButton(
                  child: Text(
                    'LOGIN',
                    style: TextConfigs.medium14
                        .copyWith(color: AppColors.whiteColor),
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
              SizedBox(
                height: 40.h,
              ),
              Image.asset('assets/images/or.png'),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Flexible(child: FacebookButton(), flex: 1),
                  SizedBox(
                    width: 56.w,
                  ),
                  const Flexible(child: GoogleButton(), flex: 1),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',
                      style: TextConfigs.regular12Grey2),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign up', style: TextConfigs.regular12Grey2),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  setUnfocus(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
