import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/views/base_widgets/button/icon_button.dart';
import 'package:flutter/material.dart';

class EditIconButton extends StatelessWidget {
  const EditIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
        icon: Image.asset('assets/icons/edit.png'),
        color: AppColors.whiteColor,
        onPressed: () => {});
  }
}
