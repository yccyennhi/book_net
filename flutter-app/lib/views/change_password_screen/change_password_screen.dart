import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/configs/validate_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/password_text_field.dart';
import 'package:book_net/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);
  static const String id = 'ChangePasswordScreen';

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  // var loginBloc;
  TextEditingController currentPassController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    //  loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    onPressedLogin() {
      Navigator.pushNamed(context, LoginScreen.id);

      // log('button click');
      // log('${_key.currentState!.validate()}');
      // print(passwordValidator
      //     .validators[passwordValidator.validators.length - 1].errorText);
    }

    // onPressedLogin() {
    // }

    return GestureDetector(
      onTap: () => setUnfocus(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, AppStyles.appBarHeight),
          child: const Bars(
            title: 'Change password',
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.w),
          child: Column(
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    PasswordTextField(
                      text: 'Current password',
                      controller: currentPassController,
                      validator: ValidateConfigs.passwordValidator,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    PasswordTextField(
                      text: 'New password',
                      controller: passController,
                      validator: ValidateConfigs.passwordValidator,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    PasswordTextField(
                      text: 'Confirm new password',
                      controller: confirmPassController,
                      validator: (val) => MatchValidator(
                              errorText: 'Passwords do not match')
                          .validateMatch(
                              passController.text, confirmPassController.text),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              RaisedGradientButton(
                child: Text(
                  'Change password',
                  style: TextConfigs.medium16
                      .copyWith(color: AppColors.oceanGreenColor),
                ),
                gradient: const LinearGradient(
                  colors: <Color>[
                    AppColors.teaGreenColor,
                    AppColors.lightGrayColor,
                  ],
                ),
                onPressed: onPressedLogin,
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
