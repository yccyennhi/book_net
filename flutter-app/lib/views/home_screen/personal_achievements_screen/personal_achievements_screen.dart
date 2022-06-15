import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/view_models/user/curr_user.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/image/default_circle_avatar.dart';
import 'package:book_net/views/base_widgets/number_with_text/number_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalAchievementsScreen extends StatelessWidget {
  static const id = "PersonalAchievementsScreen";
  const PersonalAchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: const Bars(
          title: 'Personal Achievements',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  buildHeader(),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 300,
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    const TabBar(
                      // <-- Your TabBar
                      tabs: [
                        Tab(
                            icon: Icon(
                          Icons.music_note_rounded,
                          color: AppColors.oceanGreenColor,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.card_membership_rounded,
                          color: AppColors.oceanGreenColor,
                        )),
                        // Tab(
                        //     icon: Text(
                        //   'Title',
                        //   style: TextConfigs.medium16
                        //       .copyWith(color: AppColors.oceanGreenColor),
                        // )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: TabBarView(
                        // <-- Your TabBarView
                        children: [
                          Container(color: Colors.blue),
                          Container(color: Colors.red),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        DefaultCircleAvatar(
            width: 80.w, height: 80.h, imageUrl: CurrUserData().user!.imageUrl),
        SizedBox(
          height: 8.h,
        ),
        Text(
          CurrUserData().user!.alias,
          style: TextConfigs.bold16,
        ),
        Text(
          CurrUserData().user!.name,
          style: TextConfigs.regular14,
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          width: 300.w,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Flexible(
                child: NumberWithText(
                  number: 33,
                  text: 'Your rank',
                ),
                flex: 1,
              ),
              Flexible(
                child: NumberWithText(
                  number: 33,
                  text: 'Current points',
                ),
                flex: 1,
              ),
              Flexible(
                child: NumberWithText(
                  number: 33,
                  text: 'Highest points',
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
