import 'dart:developer';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/book/book_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/dialog/confirm_dialog.dart';
import 'package:book_net/views/base_widgets/image/image.dart';
import 'package:book_net/views/base_widgets/rating_stars/base_rating_stars.dart';
import 'package:book_net/views/home_screen/detail_book_screen/widget/drop_down_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailBookScreen extends StatefulWidget {
  static const id = "DetailBookScreen";
  final BookDto book;
  const DetailBookScreen({super.key, required this.book});

  @override
  State<DetailBookScreen> createState() => _DetailBookScreenState();
}

class _DetailBookScreenState extends State<DetailBookScreen> {
  bool isAdded = false;
  String type = 'Finished';
  void onChangeType(String? newValue) {
    setState(() {
      type = newValue!;
    });
  }

  void setStateType() {
    setState(() {
      isAdded = !isAdded;
    });
  }

  @override
  Widget build(BuildContext context) {
    log(type);
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
                CustomImage(imageUrl: widget.book.imageUrl),
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
                                widget.book.name,
                                style: TextConfigs.bold16,
                              ),
                              Text(widget.book.author,
                                  style: TextConfigs.regular12.copyWith(
                                      color: AppColors.darkGrayColor)),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (isAdded == false) {
                                    return setStateType();
                                  }
                                  showMyDialog(
                                      context,
                                      'Remove book',
                                      widget.book.imageUrl,
                                      'Are you sure want to remove this book from your device?',
                                      'Remove book',
                                      setStateType);
                                },
                                icon: Icon(
                                  isAdded
                                      ? Icons.turned_in
                                      : Icons.turned_in_not,
                                  color: AppColors.oceanGreenColor,
                                  size: 20.h,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.create_outlined,
                                  color: AppColors.oceanGreenColor,
                                  size: 20.h,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          BaseRatingStar(
                            value: widget.book.rate,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            widget.book.numberOfRating.toString() + ' votes',
                            style: TextConfigs.regular10
                                .copyWith(color: AppColors.darkGrayColor),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            widget.book.reviewList.length.toString() +
                                ' Reviews',
                            style: TextConfigs.regular10
                                .copyWith(color: AppColors.darkGrayColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        widget.book.descrition,
                        style: TextConfigs.regular14
                            .copyWith(color: AppColors.darkGrayColor),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      DropDownBox(
                        isAdded: isAdded,
                        type: type,
                        onChangeType: onChangeType,
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
