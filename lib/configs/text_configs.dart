import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_configs.dart';

class TextConfigs {
  static final baseTextStyle = GoogleFonts.montserrat();

  // Using copyWith to create new TextStyle
  static final kText24w700Black = baseTextStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );

  //size
  static const double textSizeSm = 12;
  static const double textSizeMd = 16;
  static const double textSizeLg = 20;
  static const double textSizeSl = 24;
}
