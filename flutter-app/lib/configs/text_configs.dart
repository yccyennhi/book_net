import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_configs.dart';

class TextConfigs {
  //size
  static const int textSizeSm = 12;
  static const int textSizeMd = 16;
  static const int textSizeLg = 20;
  static const int textSizeSl = 24;
  static const int textSizeSSl = 32;

  static const fontFamily = 'SegoeUI';

  // Naming [font style][size][color]

  static final regular12Grey2 = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.grey2Color,
    fontSize: textSizeSm.sp,
  );

  static final regular12Blue = TextStyle(
    fontFamily: fontFamily,
    // color: AppColors.blueColor,
    fontSize: textSizeSm.sp,
  );

  static final regular16Blue = TextStyle(
    fontFamily: fontFamily,
    // color: AppColors.blueColor,
    fontSize: textSizeMd.sp,
  );

  static final regular16Grey = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.grey3Color,
    fontSize: textSizeMd.sp,
  );

  static final medium16 = TextStyle(
    fontFamily: fontFamily,
    fontSize: textSizeMd.sp,
    fontWeight: FontWeight.w500,
  );

  static final semibold20 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: textSizeLg.sp,
  );

  static final bold24Zomp = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: textSizeSl.sp,
    color: AppColors.zompColor,
  );

  static final bold24 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: textSizeSl.sp,
    color: AppColors.blackColor,
  );

  static final bold20 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: textSizeSl.sp,
    color: AppColors.blackColor,
  );

  static final bold32 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: textSizeSSl.sp,
    color: AppColors.blackColor,
  );

  static final bold16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: textSizeMd.sp,
    color: AppColors.blackColor,
  );

  static final regular12Gray = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.darkGrayColor,
    fontSize: textSizeSm.sp,
  );
}
