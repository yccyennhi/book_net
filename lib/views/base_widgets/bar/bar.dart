import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bars extends StatefulWidget {
  const Bars({
    Key? key,
    this.title,
    List<Widget>? list,
    this.suffixIcon,
  })  : _list = list,
        super(key: key);

  final String? title;
  final List<Widget>? _list;
  final Widget? suffixIcon;
  @override
  State<Bars> createState() => _BarsState();
}

class _BarsState extends State<Bars> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      shadowColor: AppColors.whiteColor,
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/left-actionable.png',
          width: 24.w,
          height: 24.h,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(widget.title ?? "", style: TextConfigs.bold20),
      centerTitle: true,
      actions: widget._list,
    );
  }
}
