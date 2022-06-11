import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleTextField extends StatelessWidget {
  const CircleTextField({
    Key? key,
    required TextEditingController controller,
    this.width = 60.0,
    this.osbcure,
    this.focusNode,
    this.onChanged,
  })  : _controller = controller,
        super(key: key);

  final double width;
  final FocusNode? focusNode;
  final TextEditingController _controller;
  final bool? osbcure;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Text(_text, style: TextConfigs.egular12Grey2),
            SizedBox(
              height: 4.h,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              focusNode: focusNode,
              onChanged: onChanged,
              controller: _controller,
              obscureText: osbcure ?? false,
              autovalidateMode:
                  _controller != "" ? AutovalidateMode.onUserInteraction : null,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppStyles.radiusLg),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.green3Color),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusLg)),
                  borderSide: BorderSide(width: 1.w, color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusLg)),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.grey1Color),
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusLg)),
                  borderSide:
                      BorderSide(width: 1.w, color: AppColors.grey1Color),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusLg)),
                  borderSide: BorderSide(width: 1.w, color: AppColors.redColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppStyles.radiusLg)),
                  borderSide: BorderSide(width: 1.w, color: AppColors.redColor),
                ),
              ),
            ),
          ]),
    );
  }
}
