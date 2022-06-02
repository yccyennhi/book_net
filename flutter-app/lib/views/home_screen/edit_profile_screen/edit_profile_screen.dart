import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:flutter/material.dart';

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
        child: Column(children: const []),
      ),
    );
  }
}
