import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: double.infinity,
      height: AppStyles.heightButtonLg,
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ]),
      // mainAxisSize: MainAxisSize.max,
      child: Material(
        color: AppColors.blueColor,
        borderRadius:
            const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppStyles.radiusMd),
          ),
          onTap: () {},
          child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Image.asset(
                'assets/icons/facebook.png',
                width: 20.w,
                height: 20.h,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Continue with Facebook',
                  style: TextConfigs.medium16
                      .copyWith(color: AppColors.whiteColor)),
            )
          ]),
        ),
      ),
    );
  }
}
