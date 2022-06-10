import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/rating_stars/base_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Book extends StatelessWidget {
  const Book(
      {super.key,
      this.name = 'Unknow',
      this.author = 'Unknow',
      this.rate = 4,
      this.numberOfRating = 1000,
      this.progress = -1,
      this.imgUrl = ''});
  final String name;
  final String author;
  final double rate;
  final int numberOfRating;
  final double progress;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.h),
      decoration: const BoxDecoration(color: AppColors.whiteColor),
      child: SizedBox(
        width: 140.h,

        // height: 284.h,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 188.h,
                width: 140.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppStyles.radiusXss),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(name, style: TextConfigs.bold16),
              SizedBox(
                height: 4.h,
              ),
              Text(author,
                  style: TextConfigs.regular12
                      .copyWith(color: AppColors.darkGrayColor)),
              SizedBox(
                height: 8.h,
              ),
              BaseRatingStar(
                value: rate,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                numberOfRating.toString() + ' votes',
                style: TextConfigs.regular10
                    .copyWith(color: AppColors.darkGrayColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              progress >= 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 112.w,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: LinearProgressIndicator(
                              minHeight: 10.h,
                              value: progress >= 0 ? (progress / 100) : 0,
                              color: AppColors.oceanGreenColor,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  AppColors.oceanGreenColor),
                              backgroundColor: AppColors.lightGrayColor,
                            ),
                          ),
                        ),
                        // const SizedBox.expand(),
                        // SizedBox(
                        //   width: 4.w,
                        // ),
                        Text(
                          progress.round().toString() + '%',
                          style: TextConfigs.regular12,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ]),
      ),
    );
  }
}
