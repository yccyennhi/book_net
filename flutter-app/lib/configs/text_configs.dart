import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_configs.dart';

class TextConfigs {
  //size
  static const int textSizeSm = 12;
  static const int textSizeRg = 14;
  static const int textSizeSRg = 16;
  static const int textSizeMd = 18;
  static const int textSizeLg = 20;
  static const int textSizeSl = 24;
  static const int textSizeSSl = 32;

  static const fontFamily = 'Inter';

  // Naming [font style][size][color]

  static const base = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.blackColor,
  );

  static final baseMedium = base.copyWith(fontWeight: FontWeight.w300);

  static final baseSemiBold = base.copyWith(fontWeight: FontWeight.w500);

  static final baseBold = base.copyWith(fontWeight: FontWeight.w700);

  static final regular12 = base.copyWith(
    fontSize: textSizeSm.sp,
  );

  static final regular12Amazon =
      regular12.copyWith(color: AppColors.amazonColor);

  static final regularItalic12DarkGrey = base.copyWith(
      fontSize: textSizeSm.sp,
      fontStyle: FontStyle.italic,
      color: AppColors.darkGrayColor);

  static final regular12Gray = base.copyWith(
    color: AppColors.darkGrayColor,
    fontSize: textSizeSm.sp,
  );

  static final regular12Grey2 = base.copyWith(
    color: AppColors.grey2Color,
    fontSize: textSizeSm.sp,
  );

  static final regular12Blue = base.copyWith(
    // color: AppColors.blueColor,
    fontSize: textSizeSm.sp,
  );

  static final regular14 = base.copyWith(
    fontSize: textSizeRg.sp,
  );

  static final regular14Grey2 = regular14.copyWith(
    color: AppColors.grey2Color,
  );

  static final regular14OceanGreen =
      base.copyWith(fontSize: textSizeRg.sp, color: AppColors.oceanGreenColor);

  static final regular16 = base.copyWith(
    fontSize: textSizeSRg.sp,
  );

  static final regular16Blue = base.copyWith(
    // color: AppColors.blueColor,
    fontSize: textSizeSRg.sp,
  );

  static final regular16Grey = base.copyWith(
    color: AppColors.grey3Color,
    fontSize: textSizeSRg.sp,
  );

  static final medium16 = baseMedium.copyWith(
    fontSize: textSizeSRg.sp,
  );

  static final medium14 = baseMedium.copyWith(
    fontSize: textSizeRg.sp,
  );

  static final semibold14 = baseSemiBold.copyWith(
    fontSize: textSizeRg.sp,
  );

  static final semibold14Grey2 =
      semibold14.copyWith(color: AppColors.grey2Color);

  static final semibold14OceanGreen =
      semibold14.copyWith(color: AppColors.oceanGreenColor);

  static final semibold16 = baseSemiBold.copyWith(
    fontSize: textSizeSRg.sp,
  );

  static final semibold16DarkGrey = semibold16.copyWith(
    color: AppColors.darkGrayColor,
  );

  static final semibold20 = baseSemiBold.copyWith(
    fontSize: textSizeLg.sp,
  );

  static final bold24Zomp = baseBold.copyWith(
    fontSize: textSizeSl.sp,
    color: AppColors.zompColor,
  );

  static final boldItalic12Grey2 = baseBold.copyWith(
      fontSize: textSizeSm.sp,
      color: AppColors.grey2Color,
      fontStyle: FontStyle.italic);

  static final bold16 = baseBold.copyWith(
    fontSize: textSizeSRg.sp,
  );

  static final bold24 = baseBold.copyWith(
    fontSize: textSizeSl.sp,
    color: AppColors.blackColor,
  );

  static final bold18 = baseBold.copyWith(
    fontSize: textSizeMd.sp,
  );

  static final bold20 = baseBold.copyWith(
    fontSize: textSizeSl.sp,
  );

  static final bold32 = baseBold.copyWith(
    fontSize: textSizeSSl.sp,
  );

  static final regular12OceanGreen = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.oceanGreenColor,
    fontSize: textSizeSm.sp,
  );
}
