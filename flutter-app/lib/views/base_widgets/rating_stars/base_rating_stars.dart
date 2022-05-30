import 'package:book_net/configs/color_configs.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class BaseRatingStar extends StatefulWidget {
  const BaseRatingStar({Key? key, this.value = 0, this.onValueChanged})
      : super(key: key);

  final double value;
  final Function(double value)? onValueChanged;

  @override
  State<BaseRatingStar> createState() => _BaseRatingStarState();
}

class _BaseRatingStarState extends State<BaseRatingStar> {
  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: widget.value,
      onValueChanged: widget.onValueChanged,
      maxValue: 5,
      starCount: 5,
      starColor: AppColors.zompColor,
      valueLabelVisibility: false,
    );
  }
}
