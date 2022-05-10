import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_configs.dart';

class TextConfigs {
  //size
  static const int textSizeSm = 12;
  static const int textSizeMd = 16;
  static const int textSizeLg = 20;
  static const int textSizeSl = 24;

  static const fontFamily = 'SegoeUI';

  // Naming [font style][size][color]

  static final regular12Grey2 = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.grey2Color,
    fontSize: textSizeSm.sp,
  );

  static final medium14 = TextStyle(
    fontFamily: fontFamily,
    fontSize: textSizeMd.sp,
  );
}
