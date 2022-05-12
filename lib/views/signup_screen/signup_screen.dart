import 'dart:developer';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/confirm_password_validator.dart';
import 'package:book_net/views/base_widgets/text_field/password_text_field.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:book_net/views/login_screen/widgets/button/facebook_button.dart';
import 'package:book_net/views/login_screen/widgets/button/google_button.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = 'signUp';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'E-mail is required'),
    EmailValidator(errorText: 'Invalid E-mail'),
  ]);

  final passwordValidator =
      ConfirmPasswordValidator(errorText: "Password must not have whitespace");

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final confirmPasswordValidator =
        MatchValidator(errorText: 'Passwords do not match').validateMatch(
            passController.text.trim(), confirmPassController.text.trim());

    login() {
      log('button click');
      log('${_key.currentState!.validate()}');
      // print(passwordValidator
      //     .validators[passwordValidator.validators.length - 1].errorText);
    }

    return GestureDetector(
      onTap: () => setUnfocus(context),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Container(
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
                Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      CustomTextField(
                        text: 'E-mail address',
                        controller: userController,
                        validator: emailValidator,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      CustomTextField(
                        text: 'First name',
                        controller: userController,
                        validator: emailValidator,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        text: 'Last name',
                        controller: userController,
                        validator: emailValidator,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      PasswordTextField(
                        text: 'Password',
                        controller: passController,
                        validator: passwordValidator,
                      ),
                      // PasswordTextField(
                      //   text: 'Confirm password',
                      //   controller: confirmPassController,
                      //   validator: confirmPasswordValidator,
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    child: Text('Forgot your password?',
                        style: TextConfigs.regular12Blue),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 28,
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
                  onPressed: login,
                ),
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
                      width: 40,
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
                    Text(
                      'Don’t have an account?',
                      style: TextConfigs.regular12Grey2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextConfigs.regular12Blue,
                      ),
                    )
                  ],
                ),
              ],
            ),
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
