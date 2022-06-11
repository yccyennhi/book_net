import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final bool disable;
  final bool outline;

  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = AppStyles.heightButtonLg,
    this.disable = false,
    this.outline = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: !disable ? gradient : null,
        color: disable
            ? AppColors.grayColor
            : outline
                ? AppColors.lightestSkyColor
                : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppStyles.radiusLg),
        ),
        border: Border.all(
            width: 1.w,
            color: outline ? AppColors.oceanGreenColor : Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: (outline && !disable)
                ? Colors.transparent
                : (disable && !outline)
                    ? AppColors.grayColor.withOpacity(0.2)
                    : AppColors.lightGreenColor.withOpacity(0.2),
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
