import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/dto/news/comment_dto.dart';
import 'package:book_net/dto/news/reply_comment_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/text_configs.dart';
import '../../../utils/time_utils.dart';

class ReplyCommentRowItem extends StatelessWidget {
  const ReplyCommentRowItem({Key? key, required this.replyCommentDto})
      : super(key: key);

  final ReplyCommentDto replyCommentDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: AppStyles.defaultMarginHorizontal + 40.w,
          right: AppStyles.defaultMarginHorizontal,
          bottom: AppStyles.smallMarginVertical),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: CircleAvatar(
                backgroundImage:
                    NetworkImage(replyCommentDto.commentUser.imageUrl)),
          ),
          SizedBox(width: AppStyles.smallMarginHorizontal),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                replyCommentDto.commentUser.alias,
                style: TextConfigs.semibold14,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Text(
                  replyCommentDto.content,
                  style: TextConfigs.regular12Grey2,
                ),
              ),
              Text(
                TimeUtils.getDurationText(replyCommentDto.createDate),
                style: TextConfigs.regular12Grey2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
