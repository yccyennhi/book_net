import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/pojo/news/comment_pojo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_configs.dart';
import '../../../utils/time_utils.dart';

class CommentRowItem extends StatelessWidget {
  const CommentRowItem({Key? key, required this.commentPojo}) : super(key: key);

  final CommentPojo commentPojo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: AppStyles.defaultMarginHorizontal,
          right: AppStyles.defaultMarginHorizontal,
          bottom: AppStyles.smallMarginVertical),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: CircleAvatar(
                backgroundImage:
                    NetworkImage(commentPojo.commentUser.imageUrl)),
          ),
          SizedBox(width: AppStyles.smallMarginHorizontal),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                commentPojo.commentUser.alias,
                style: TextConfigs.semibold14,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Text(
                  commentPojo.content,
                  style: TextConfigs.regular12Grey2,
                ),
              ),
              Row(
                children: [
                  Text(
                    TimeUtils.getDurationText(commentPojo.createDate),
                    style: TextConfigs.regular12Grey2,
                  ),
                  SizedBox(width: AppStyles.defaultMarginHorizontal),
                  Text(
                    'Reply',
                    style: TextConfigs.regular12Amazon,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
