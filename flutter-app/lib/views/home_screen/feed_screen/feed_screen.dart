import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

import '../../../configs/style_configs.dart';

class FeedScreen extends StatelessWidget {
  static const id = "FeedScreen";
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.defaultMarginHorizontal,
                vertical: AppStyles.defaultMarginVertical),
            child: Text(
              "Hi, TrungHieu! Let's explore something new!",
              style: TextConfigs.bold20Black,
            ),
          ),
        ],
      ),
    );
  }
}
