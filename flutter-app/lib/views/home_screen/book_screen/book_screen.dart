import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/book/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookScreen extends StatelessWidget {
  static const id = "BookScreen";
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: const Bars(
          title: 'Book',
          leading: SizedBox(),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - AppStyles.appBarHeight,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Downloaded', style: TextConfigs.bold18),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 340.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listBook.length,
                      itemBuilder: (context, i) {
                        return Book(
                          name: listBook[i].name,
                          imgUrl: listBook[i].imageUrl,
                          author: listBook[i].author,
                          rate: listBook[i].rate,
                          numberOfRating: listBook[i].numberOfRating,
                        );
                      }),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text('Maybe you like', style: TextConfigs.bold18),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 340.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listBook.length,
                      itemBuilder: (context, i) {
                        return Book(
                          name: listBook[i].name,
                          imgUrl: listBook[i].imageUrl,
                          author: listBook[i].author,
                          rate: listBook[i].rate,
                          numberOfRating: listBook[i].numberOfRating,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
