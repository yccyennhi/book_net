import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final bool disable;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = AppStyles.heightButtonLg,
    this.disable = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: !disable ? gradient : null,
        color: disable ? AppColors.grayColor : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppStyles.radiusLg),
        ),
        boxShadow: [
          BoxShadow(
            color: !disable
                ? AppColors.lightGreenColor.withOpacity(0.2)
                : AppColors.grayColor.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppStyles.radiusLg),
          ),
          onTap: () {
            if (!disable) onPressed();
          },
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
