import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required String text,
    required TextEditingController controller,
    this.width = double.infinity,
    required String? Function(String?)? validator,
  })  : _text = text,
        _controller = controller,
        _validator = validator,
        super(key: key);

  final double width;
  final String _text;
  final TextEditingController _controller;
  final String? Function(String?)? _validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget._text,
                style: const TextStyle(
                    color: AppColors.grey2Color,
                    fontSize: TextConfigs.textSizeSm)),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              controller: widget._controller,
              // onEditingComplete: ,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide:
                      BorderSide(width: 1, color: AppColors.green3Color),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide: BorderSide(width: 1, color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                  borderSide: BorderSide(width: 1, color: AppColors.grey1Color),
                ),
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.grey1Color)),
                errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.redColor)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
                    borderSide:
                        BorderSide(width: 1, color: AppColors.redColor)),
              ),

              validator: widget._validator,
            ),
          ]),
    );
  }
}
