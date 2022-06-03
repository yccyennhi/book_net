import 'dart:io';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/view_models/user/curr_user.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../configs/style_configs.dart';
import '../../../configs/text_configs.dart';
import '../../base_widgets/bar/bar.dart';
import '../../base_widgets/button/raised_gradient_button.dart';
import 'news_image_widget.dart';

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
            _buildHeader(context),
            SizedBox(
              height: AppStyles.defaultMarginVertical,
            ),
            _buildTextField(),
            const ImageAndPostWidget(
              isAbleToAddImage: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppStyles.defaultMarginHorizontal),
              child: RaisedGradientButton(
                  child: Text(
                    'Post',
                    style: TextConfigs.medium16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      AppColors.green2Color,
                      AppColors.green1Color,
                    ],
                  ),
                  onPressed: () {}),
            ),
          ],
        ));
  }

  Widget _buildTextField() {
    return Container(
      height: 180.h,
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

  Widget _buildHeader(BuildContext context) {
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
