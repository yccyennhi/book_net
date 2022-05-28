import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_configs.dart';

class TextConfigs {
  //size
  static double textSizeSm = 12.sp;
  static double textSizeMd = 16.sp;
  static double textSizeLg = 20.sp;
  static double textSizeSl = 24.sp;

  static const fontFamily = 'Inter';

  // Naming [font style][size][color]

  static final regular12Grey2 = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.grey2Color,
    fontSize: textSizeSm,
  );

  static final medium14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: textSizeMd,
      fontWeight: FontWeight.w300);

  static final bold20Black = TextStyle(
    fontFamily: fontFamily,
    fontSize: textSizeLg.sp,
    fontWeight: FontWeight.w600,
  );
}
