import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldButton extends StatelessWidget {
  const FieldButton(
      {Key? key,
      required this.fieldName,
      required this.fieldValue,
      required this.onTap})
      : super(key: key);
  final String fieldName;
  final String fieldValue;

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: double.infinity,
      height: AppStyles.heightButtonLg,
      // mainAxisSize: MainAxisSize.max,
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.h),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(fieldName,
                          style: TextConfigs.regular16
                              .copyWith(color: AppColors.darkGrayColor)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(fieldValue,
                          style: TextConfigs.regular16
                              .copyWith(color: AppColors.darkGrayColor)),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
