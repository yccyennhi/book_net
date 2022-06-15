import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/home_screen/personal_achievements_screen/widget/stf_btn_select/stf_btn_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleCard extends StatelessWidget {
  const TitleCard(
      {super.key,
      required this.title,
      required this.point,
      required this.isSelect});
  final bool isSelect;
  final String title;
  final int point;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 64.h,
      margin: EdgeInsets.all(12.h),

      // decoration: const BoxDecoration(color: AppColors.amazonColor),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextConfigs.regular16
                        .copyWith(color: AppColors.darkGrayColor),
                  ),
                  Text(
                    point.toString(),
                    style: TextConfigs.regular14
                        .copyWith(color: AppColors.grayColor),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                StatefulButtonSelect(
                  isSelect: isSelect,
                  title: title,
                  point: point,
                ),
                SizedBox(
                  width: 24.w,
                ),
              ],
            )
          ]),
    );
  }
}
