import 'package:book_net/configs/color_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class BaseRatingStar extends StatefulWidget {
  const BaseRatingStar(
      {Key? key, this.value = 3.5, this.starSize = 12, this.onValueChanged})
      : super(key: key);

  final double value;
  final double starSize;

  final Function(double value)? onValueChanged;

  @override
  State<BaseRatingStar> createState() => _BaseRatingStarState();
}

class _BaseRatingStarState extends State<BaseRatingStar> {
  @override
  Widget build(BuildContext context) {
    return RatingStars(
      starSize: widget.starSize,
      value: widget.value,
      onValueChanged: (v) {
        //
        widget.onValueChanged != null ? widget.onValueChanged!(v) : null;
      },
      maxValue: 5,
      starCount: 5,
      starColor: AppColors.zompColor,

      valueLabelColor: const Color(0xff9b9b9b),
      valueLabelTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12.0),
      valueLabelRadius: 10,
      starSpacing: 2,
      maxValueVisibility: true,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 1000),
      // valueLabelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      // valueLabelMargin: const EdgeInsets.only(right: 8),
      starOffColor: const Color(0xffe7e8ea),
    );
  }
}
