import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: TextConfigs.regular12Amazon,
      ),
      backgroundColor: AppColors.teaGreenColor,
    );
  }
}
