import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditScreen extends StatelessWidget {
  static const id = "EditScreen";
  const EditScreen({
    Key? key,
    required this.type,
  }) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    onSave(String value) {
      print(type + ' ' + value);
      switch (type) {
        case 'Alias':
          break;
        case 'Name':
          break;
        case 'Status':
          break;
        case 'Email':
          break;
        case 'Date Of Birth':
          break;
        case 'Gender':
          break;
      }
      Navigator.of(context).pop();
    }

    print(type);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, AppStyles.appBarHeight),
        child: const Bars(
          title: 'Edit profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomTextField(
                text: type,
                controller: textController,
                validator: null,
              ),
              SizedBox(height: 16.h),
              RaisedGradientButton(
                child: Text(
                  'Save',
                  style: TextConfigs.medium16
                      .copyWith(color: AppColors.whiteColor),
                ),
                gradient: const LinearGradient(
                  colors: <Color>[
                    AppColors.green1Color,
                    AppColors.green2Color,
                  ],
                ),
                onPressed: () => onSave(textController.text),
              )
            ],
          ),
        ),
      ),
    );
  }
}
