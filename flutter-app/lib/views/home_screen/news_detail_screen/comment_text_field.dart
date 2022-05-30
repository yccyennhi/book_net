import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/color_configs.dart';
import '../../../configs/style_configs.dart';
import '../../../configs/text_configs.dart';

class CommentTextField extends StatefulWidget {
  const CommentTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<CommentTextField> createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  final _controller = TextEditingController();
  bool _canPost = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _canPost = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.green3Color,
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Write a comment...',
        suffixIcon: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            'Post',
            style: _canPost
                ? TextConfigs.semibold14OceanGreen
                : TextConfigs.semibold14Grey2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radiusXs)),
          borderSide: BorderSide(width: 1.w, color: AppColors.grey1Color),
        ),
        border: OutlineInputBorder(
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radiusXs)),
          borderSide: BorderSide(width: 1.w, color: AppColors.grey1Color),
        ),
      ),
    );
  }
}
