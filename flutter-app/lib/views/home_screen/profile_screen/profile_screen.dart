import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/chips/custom_chip.dart';
import 'package:book_net/views/base_widgets/number_with_text/number_with_text.dart';
import 'package:book_net/views/home_screen/feed_screen/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "ProfileScreen";
  const ProfileScreen({Key? key}) : super(key: key);

  void launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'myOwnEmailAddress@gmail.com',
        queryParameters: {
          'subject': 'Default Subject',
          'body': 'Default body'
        });
    String url = params.toString();
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print('Could not launch $url');
    }
  }

  onPressedViewBookshelf() {}

  @override
  Widget build(BuildContext context) {
    List<String> interested = [
      '🤡 Comedy',
      '👻 Horror',
      '💅🏻 Drama',
      '❤ Romantic'
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: const Bars(
          title: 'Profile',
          leading: SizedBox(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(userTestModel.imageUrl),
                            radius: 32.r,
                            foregroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width -
                                64.w -
                                48.w -
                                20.w,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'review',
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'follow',
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'like',
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      userTestModel.alias,
                      style: TextConfigs.bold16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: TextButton(
                  child: Text(userTestModel.alias + '@gmail.com',
                      style: TextConfigs.regular12OceanGreen),
                  onPressed: launchEmailSubmission,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.h, 4.h, 24.h, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bo cua su that',
                      style: TextConfigs.regular12Gray,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.h, 4.h, 16.h, 16.h),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.5,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 5,
                  ),
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3, childAspectRatio: 3),
                  itemCount: interested.length,
                  itemBuilder: (context, index) {
                    return CustomChip(text: interested[index]);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 0.h, 24.w, 16.h),
                child: RaisedGradientButton(
                  child: Text(
                    'View ' + userTestModel.alias + ' bookshelf',
                    style: TextConfigs.medium16
                        .copyWith(color: AppColors.oceanGreenColor),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      AppColors.teaGreenColor,
                      AppColors.lightGrayColor,
                    ],
                  ),
                  onPressed: onPressedViewBookshelf,
                ),
              ),
              const Divider(),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: newsListTest.length,
                itemBuilder: (context, index) => NewsCard(
                    news: newsListTest[index], screenType: NewsScreenType.feed),
              ),
            ]),
      ),
    );
  }
}
