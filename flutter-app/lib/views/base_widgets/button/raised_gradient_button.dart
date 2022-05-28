import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = AppStyles.heightButtonLg,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppStyles.radiusMd),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.green1Color.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppStyles.radiusMd),
          ),
          onTap: () {
            onPressed();
          },
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
