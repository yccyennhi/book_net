import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/view_models/user/curr_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/style_configs.dart';
import '../../../configs/text_configs.dart';
import '../../base_widgets/bar/bar.dart';

class CreateNewsScreen extends StatelessWidget {
  static const id = 'CreateNewsScreen';
  const CreateNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, AppStyles.appBarHeight),
          child: const Bars(
            title: 'New post',
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        body: Column(
          children: [
            _buildHeader(),
            SizedBox(
              height: AppStyles.defaultMarginVertical,
            ),
            _buildBody(),
          ],
        ));
  }

  Widget _buildBody() {
    return Container(
      height: 160.h,
      padding:
          EdgeInsets.symmetric(horizontal: AppStyles.defaultMarginHorizontal),
      child: TextFormField(
        style: TextConfigs.regular16,
        cursorColor: AppColors.green1Color,
        maxLines: null,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Write something...',
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 40.h,
      padding:
          EdgeInsets.symmetric(horizontal: AppStyles.defaultMarginHorizontal),
      child: Row(
        children: [
          SizedBox(
            height: 40.h,
            width: 40.w,
            child: CircleAvatar(
              backgroundImage: NetworkImage(CurrUserData().user!.imageUrl),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.smallMarginHorizontal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  CurrUserData().user!.alias,
                  style: TextConfigs.regular16,
                ),
                Text(
                  CurrUserData().user!.name,
                  style: TextConfigs.regular14Grey2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
