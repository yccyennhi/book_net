import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_configs.dart';

class TextConfigs {
  static final kBaseTextStyle = GoogleFonts.montserrat();

  // Using copyWith to create new TextStyle
  static final kText24w700Black = kBaseTextStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.kBlackColor,
  );
}
