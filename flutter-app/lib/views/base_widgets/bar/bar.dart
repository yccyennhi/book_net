import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bars extends StatelessWidget {
  const Bars({
    Key? key,
    this.title,
    List<Widget>? list,
    this.leading,
  })  : _list = list,
        super(key: key);

  final String? title;
  final List<Widget>? _list;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      bottomOpacity: 0.0,
      elevation: 0,
      leading: leading ??
          IconButton(
            icon: Image.asset(
              'assets/icons/left-actionable.png',
              width: 24.w,
              height: 24.h,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
      title: Text(title ?? "", style: TextConfigs.bold20),
      centerTitle: true,
      actions: _list,
    );
  }
}
