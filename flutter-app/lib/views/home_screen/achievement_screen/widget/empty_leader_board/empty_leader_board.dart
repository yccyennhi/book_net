import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyLeaderBoard extends StatelessWidget {
  const EmptyLeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/award.png',
              width: 28.w,
              height: 44.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 130.w,
              child: Text(
                'There’s no one on Leader board',
                textAlign: TextAlign.center,
                style:
                    TextConfigs.regular16.copyWith(color: AppColors.grayColor),
              ),
            ),
          ]),
    );
  }
}
