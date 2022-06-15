import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MusicCard extends StatefulWidget {
  const MusicCard(
      {super.key,
      required this.name,
      required this.author,
      required this.points});
  final String name;
  final String author;
  final String points;

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    setStateIsSelect() {
      setState(() {
        isSelect = !isSelect;
      });
    }

    return Container(
      margin: EdgeInsets.all(12.h),
      width: 328.w,
      height: 64.h,
      // decoration: const BoxDecoration(color: AppColors.amazonColor),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(48)),
          color: isSelect ? AppColors.amazonColor : AppColors.whiteColor),

      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextConfigs.regular16.copyWith(
                        color: isSelect
                            ? AppColors.whiteColor
                            : AppColors.darkGrayColor),
                  ),
                  Text(
                    widget.author,
                    style: TextConfigs.regular14
                        .copyWith(color: AppColors.grayColor),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CustomIconButton(
                    background:
                        isSelect ? Colors.transparent : AppColors.whiteColor,
                    icon: isSelect
                        ? const Icon(
                            Icons.pause_circle_outlined,
                            color: AppColors.whiteColor,
                          )
                        : const Icon(Icons.play_circle_outlined),
                    color:
                        isSelect ? AppColors.amazonColor : AppColors.whiteColor,
                    onPressed: setStateIsSelect),
                SizedBox(
                  width: 24.w,
                ),
              ],
            )
          ]),
    );
  }
}
