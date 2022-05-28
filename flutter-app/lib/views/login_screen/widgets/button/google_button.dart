import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: double.infinity,
      height: AppStyles.heightButtonLg,
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
          border: Border.all(color: AppColors.grayColor, width: 1.w),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ]),
      // mainAxisSize: MainAxisSize.max,
      child: Material(
        color: AppColors.whiteColor,
        borderRadius:
            const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
        child: InkWell(
            onTap: () {},
            child: Center(
              child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Image.asset(
                    'assets/icons/google.png',
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(text!,
                      style: TextConfigs.medium16
                          .copyWith(color: AppColors.blackColor)),
                )
              ]),
            )),
      ),
    );
  }
}
