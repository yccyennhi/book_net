import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.icon, required this.color})
      : super(key: key);
  final Widget icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Ink(
          decoration: ShapeDecoration(
            color: color,
            shape: const CircleBorder(),
          ),
          child: IconButton(
            icon: icon,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
