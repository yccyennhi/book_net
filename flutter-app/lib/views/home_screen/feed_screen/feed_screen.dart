import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/views/home_screen/create_news_screen/create_news_screen.dart';
import 'package:book_net/views/home_screen/feed_screen/news.dart';
import 'package:flutter/material.dart';

import '../../../configs/color_configs.dart';
import '../../../configs/style_configs.dart';
import '../../base_widgets/bar/bar.dart';
import '../../base_widgets/button/icon_button.dart';
import '../../base_widgets/button/raised_gradient_button.dart';

class FeedScreen extends StatelessWidget {
  static const id = "FeedScreen";
  FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: Bars(
          title: 'Newfeed',
          list: _barIcons,
          leading: const SizedBox(),
        ),
      ),
      // TODO: Fix here, it must be infinity list
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: _buildListItem(context),
      ),
    );
  }

  final List<Widget> _barIcons = [
    CustomIconButton(
        icon: Image.asset('assets/icons/ic_search.png'),
        color: AppColors.whiteColor,
        onPressed: () => {}),
    // Padding(
    //   padding: EdgeInsets.symmetric(vertical: 4.h),
    //   child: DefaultCircleAvatar(
    //     imageUrl: CurrUserData().user!.imageUrl,
    //     height: 40.h,
    //     width: 40.w,
    //   ),
    // ),
    SizedBox(
      width: AppStyles.defaultMarginHorizontal,
    )
  ];

  Widget _buildHeader(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.defaultMarginHorizontal,
                vertical: AppStyles.defaultMarginVertical),
            child: Text(
              "Hi, Trung Hieu! Let's explore something new!",
              style: TextConfigs.bold20,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.defaultMarginHorizontal),
            child: RaisedGradientButton(
              child: Text(
                'Create a post',
                style:
                    TextConfigs.medium16.copyWith(color: AppColors.whiteColor),
              ),
              gradient: const LinearGradient(
                colors: AppColors.gradientPrimary,
              ),
              onPressed: () => _navigateToCreateNewsScreen(context),
            ),
          ),
          SizedBox(
            height: AppStyles.smallMarginVertical,
          )
        ],
      ),
    );
  }

  List<Widget> _buildListItem(BuildContext context) {
    List<Widget> listItem = [];

    for (BaseNewsDto model in newsListTest) {
      listItem.add(NewsCard(
        news: model,
        screenType: NewsScreenType.feed,
      ));
    }

    listItem.insert(0, _buildHeader(context));
    return listItem;
  }

  void _navigateToCreateNewsScreen(BuildContext context) {
    Navigator.pushNamed(context, CreateNewsScreen.id);
  }
}
