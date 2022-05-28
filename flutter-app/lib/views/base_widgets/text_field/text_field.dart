import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required String text,
    required TextEditingController controller,
    this.width = double.infinity,
    this.suffixIcon,
    this.osbcure,
    required String? Function(String?)? validator,
  })  : _text = text,
        _controller = controller,
        _validator = validator,
        super(key: key);

  final double width;
  final String _text;
  final TextEditingController _controller;
  final String? Function(String?)? _validator;
  final Widget? suffixIcon;
  final bool? osbcure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(_text, style: TextConfigs.regular12Grey2),
            SizedBox(
              height: 4.h,
            ),
            TextFormField(
              controller: _controller,
              obscureText: osbcure ?? false,
              autovalidateMode:
                  _controller != "" ? AutovalidateMode.onUserInteraction : null,
              decoration: InputDecoration(
                hintText: _text,
                labelText: _text,
                suffixIcon: suffixIcon,
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.green3Color),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide: BorderSide(width: 1.w, color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.grey1Color),
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.grey1Color),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide: BorderSide(width: 1.w, color: AppColors.redColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusXxs)),
                  borderSide: BorderSide(width: 1.w, color: AppColors.redColor),
                ),
              ),
              validator: _validator,
            ),
          ]),
    );
  }
}
