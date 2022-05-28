import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

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
            Text(_text, style: TextConfigs.regular12Grey2),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              controller: _controller,
              obscureText: osbcure ?? false,
              // onEditingComplete: ,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                focusedBorder: const OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide:
                      BorderSide(width: 1, color: AppColors.green3Color),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide: BorderSide(width: 1, color: Colors.orange),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide: BorderSide(width: 1, color: AppColors.grey1Color),
                ),
                border: const OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.grey1Color)),
                errorBorder: const OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.redColor)),
                focusedErrorBorder: const OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.redColor)),
              ),

              validator: _validator,
            ),
          ]),
    );
  }
}
