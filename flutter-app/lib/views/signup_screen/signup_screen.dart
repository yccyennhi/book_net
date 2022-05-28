import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/configs/validate_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/password_text_field.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:book_net/views/login_screen/login_screen.dart';
import 'package:book_net/views/login_screen/widgets/button/facebook_button.dart';
import 'package:book_net/views/login_screen/widgets/button/google_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = 'signUp';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    onPressedSignUp() {
      _key.currentState!.validate();
    }

    onPressedLogin() {
      Navigator.pushNamed(context, LoginScreen.id);
    }

    return GestureDetector(
      onTap: () => setUnfocus(context),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Image.asset('assets/images/LogoHorizontal.png'),
                SizedBox(
                  height: 52.h,
                ),
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      CustomTextField(
                        text: 'E-mail address',
                        controller: userController,
                        validator: ValidateConfigs.emailValidator,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomTextField(
                        text: 'First name',
                        controller: firstNameController,
                        validator: ValidateConfigs.firstNameValidator,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomTextField(
                        text: 'Last name',
                        controller: lastNameController,
                        validator: ValidateConfigs.lastNameValidator,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      PasswordTextField(
                        text: 'Password',
                        controller: passController,
                        validator: ValidateConfigs.passwordValidator,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      PasswordTextField(
                        text: 'Confirm password',
                        controller: confirmPassController,
                        validator: (val) =>
                            MatchValidator(errorText: 'Passwords do not match')
                                .validateMatch(passController.text,
                                    confirmPassController.text),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                RaisedGradientButton(
                  child: Text(
                    'SIGN UP',
                    style: TextConfigs.medium16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      AppColors.green2Color,
                      AppColors.green1Color,
                    ],
                  ),
                  onPressed: onPressedSignUp,
                ),
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
                      width: 40.w,
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
                    Text(
                      'Already have an account?',
                      style: TextConfigs.regular12Grey2,
                    ),
                    TextButton(
                      onPressed: onPressedLogin,
                      child: Text(
                        'Login',
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
