import 'package:book_net/configs/color_configs.dart';
import 'package:flutter/material.dart';

class CustomChoiceChips extends StatelessWidget {
  const CustomChoiceChips(
      {super.key, required this.isSelected, required this.text});

  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: isSelected,
      disabledColor: AppColors.greenLightestColor,
      backgroundColor: AppColors.greenLightestColor,
      selectedShadowColor: AppColors.green1Color,
      selectedColor: AppColors.amazonColor,
      labelStyle: TextStyle(
        color:
            isSelected ? AppColors.greenLightestColor : AppColors.amazonColor,
      ),
    );
  }
}
