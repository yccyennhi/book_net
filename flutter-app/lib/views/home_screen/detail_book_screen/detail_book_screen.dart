import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/book/book_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/image/image.dart';
import 'package:book_net/views/base_widgets/rating_stars/base_rating_stars.dart';
import 'package:book_net/views/home_screen/detail_book_screen/widget/stf_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailBookScreen extends StatelessWidget {
  static const id = "DetailBookScreen";
  final BookDto book;
  const DetailBookScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    onPressedAddBookshelf() {}
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, AppStyles.appBarHeight),
          child: const Bars(
            title: 'Book Detail',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(imageUrl: book.imageUrl),
                Padding(
                  padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.name,
                                style: TextConfigs.bold16,
                              ),
                              Text(book.author,
                                  style: TextConfigs.regular12.copyWith(
                                      color: AppColors.darkGrayColor)),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: AppColors.oceanGreenColor,
                              size: 16.h,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          BaseRatingStar(
                            value: book.rate,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            book.numberOfRating.toString() + ' votes',
                            style: TextConfigs.regular10
                                .copyWith(color: AppColors.darkGrayColor),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            book.reviewList.length.toString() + ' Reviews',
                            style: TextConfigs.regular10
                                .copyWith(color: AppColors.darkGrayColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        book.descrition,
                        style: TextConfigs.regular14
                            .copyWith(color: AppColors.darkGrayColor),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      StatefulButton(
                        isAdded: false,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
