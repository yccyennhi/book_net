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
  })  : _text = text,
        _controller = controller,
        super(key: key);

  final double width;
  final String _text;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(_text,
                style: const TextStyle(
                    color: AppColors.grey2Color,
                    fontSize: TextConfigs.textSizeSm)),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              controller: _controller,
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

                // border: OutlineInputBorder(borderSide: Colors.amber),
                // hintText: 'E-mail address',
              ),
              style: const TextStyle(
                height: 0,
              ),
            ),
          ]),
    );
  }
}
