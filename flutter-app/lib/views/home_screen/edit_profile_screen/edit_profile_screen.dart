import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/profile_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/field_button.dart';
import 'package:book_net/views/base_widgets/chips/custom_chip.dart';
import 'package:book_net/views/home_screen/edit_profile_screen/widget/edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends StatelessWidget {
  static const id = "EditProfileScreen";

  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtBirthdateController =
        TextEditingController(text: '6/8/2022');
    DateTime initDate = DateTime(2022, 6, 8);
    void pickDate() async {
      final pickDate = await showDatePicker(
        context: context,
        initialDate: initDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColors.oceanGreenColor, // header background color
                onPrimary: AppColors.teaGreenColor, // header text color
                onSurface: AppColors.blackColor, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColors.oceanGreenColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
      );
      if (pickDate == null) return;
      txtBirthdateController.text = DateFormat('dd/MM/yyyy').format(pickDate);
    }

    onEdit(String type) {
      Navigator.pushNamed(context, EditScreen.id, arguments: type);
    }

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
                    fieldName: Profile.alias,
                    fieldValue: 'Duy Quan',
                    onTap: () => {onEdit(Profile.alias)}),
                FieldButton(
                    fieldName: Profile.name,
                    fieldValue: 'Duy Quan',
                    onTap: () => {onEdit(Profile.name)}),
                FieldButton(
                    fieldName: Profile.status,
                    fieldValue: 'Duy Quan',
                    onTap: () => {onEdit(Profile.status)}),
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
                    fieldName: Profile.email,
                    fieldValue: 'Duy Quan',
                    onTap: () => {onEdit(Profile.email)}),
                FieldButton(
                    fieldName: Profile.dob,
                    fieldValue: DateFormat('dd/MM/yyyy').format(initDate),
                    onTap: pickDate),
                FieldButton(
                    fieldName: Profile.gender,
                    fieldValue: 'Duy Quan',
                    onTap: () => {onEdit(Profile.gender)}),
                SizedBox(
                  height: 32.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("FAVORITE BOOK TYPE",
                              style: TextConfigs.regular12.copyWith(
                                color: AppColors.greyColor,
                              )),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextConfigs.medium14
                                  .copyWith(color: AppColors.oceanGreenColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: interested.length,
                    itemBuilder: (context, index) {
                      return CustomChip(text: interested[index]);
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
