import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/configs/validate_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/password_text_field.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var loginBloc;
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    //  loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    onPressedLogin() {
      _key.currentState!.validate();
      // log('button click');
      // log('${_key.currentState!.validate()}');
      // print(passwordValidator
      //     .validators[passwordValidator.validators.length - 1].errorText);
    }

    return GestureDetector(
      onTap: () => setUnfocus(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 48.h),
          child: const Bars(
            title: 'Login',
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 0.h, 24.w, 0.h),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 48.h - 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome back.', style: TextConfigs.bold32),
                  Text('Log in to your account.', style: TextConfigs.medium16),
                  SizedBox(
                    height: 24.h,
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
                          height: 12.h,
                        ),
                        PasswordTextField(
                          text: 'Password',
                          controller: passController,
                          validator: ValidateConfigs.passwordValidator,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextButton(
                    child: Text('Forgot your password?',
                        style: TextConfigs.regular12Blue),
                    onPressed: () {},
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'By continuing, you agree to our Terms of Service and Privacy Policy.',
                    style: TextConfigs.regular12Blue,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  RaisedGradientButton(
                    child: Text(
                      'LOGIN',
                      style: TextConfigs.medium16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    gradient: const LinearGradient(
                      colors: <Color>[
                        AppColors.green1Color,
                        AppColors.green2Color,
                      ],
                    ),
                    onPressed: onPressedLogin,
                  ),
                ],
              ),
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
