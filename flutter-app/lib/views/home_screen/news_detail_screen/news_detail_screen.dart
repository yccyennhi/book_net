import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  static const String id = 'NewsDetailScreen';

  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, AppStyles.appBarHeight),
          child: const Bars()),
      body: Column(children: []),
    );
  }
}
