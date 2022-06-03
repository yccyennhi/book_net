import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/field_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  static const id = "EditProfileScreen";

  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: const Bars(
          title: 'Edit profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userTestModel.imageUrl),
              radius: 38.r,
              foregroundColor: Colors.red,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.greenLightestColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(48),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 0.h, 12.w, 0.h),
              child: Text(
                'Change',
                style: TextConfigs.medium16
                    .copyWith(color: AppColors.oceanGreenColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                FieldButton(
                    fieldName: 'Alias', fieldValue: 'Duy Quan', onTap: () {}),
                FieldButton(
                    fieldName: 'Name', fieldValue: 'Duy Quan', onTap: () {}),
                FieldButton(
                    fieldName: 'Status', fieldValue: 'Duy Quan', onTap: () {}),
                SizedBox(
                  height: 32.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ACCOUNT INFORMATION",
                      style: TextConfigs.regular12.copyWith(
                        color: AppColors.greyColor,
                      )),
                ),
                SizedBox(
                  height: 12.h,
                ),
                FieldButton(
                    fieldName: 'Email', fieldValue: 'Duy Quan', onTap: () {}),
                FieldButton(
                    fieldName: 'Date Of Birth',
                    fieldValue: 'Duy Quan',
                    onTap: () {}),
                FieldButton(
                    fieldName: 'Gender', fieldValue: 'Duy Quan', onTap: () {}),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
