import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

import '../../../configs/color_configs.dart';
import '../../../configs/style_configs.dart';
import '../../base_widgets/button/raised_gradient_button.dart';

class FeedScreen extends StatelessWidget {
  static const id = "FeedScreen";
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
      ),
      body: Column(
        children: <Widget>[
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
                  style: TextConfigs.medium16
                      .copyWith(color: AppColors.whiteColor),
                ),
                gradient: const LinearGradient(
                  colors: <Color>[
                    AppColors.green1Color,
                    AppColors.green2Color,
                  ],
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
