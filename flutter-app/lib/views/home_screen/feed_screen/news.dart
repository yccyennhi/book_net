import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/pojo/news/base_news_pojo.dart';
import 'package:book_net/pojo/news/guild_news_pojo.dart';
import 'package:book_net/pojo/news/post_news_pojo.dart';
import 'package:book_net/pojo/news/review_news_pojo.dart';
import 'package:book_net/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../base_widgets/rating_stars/base_rating_stars.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required BaseNewsPojo news})
      : baseNewsPojo = news,
        super(key: key);

  final BaseNewsPojo baseNewsPojo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: AppStyles.defaultMarginVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(baseNewsPojo),
          _buildBody(baseNewsPojo, context),
          _buildFooter(baseNewsPojo),
        ],
      ),
    );
  }

  Widget _buildHeader(BaseNewsPojo baseNewsPojo) {
    switch (NewsType.fromInt(baseNewsPojo.type)) {
      case NewsType.guild:
        return _buildGuildHeader(baseNewsPojo);
      default:
        return _buildDefaultHeader(baseNewsPojo);
    }
  }

  Widget _buildGuildHeader(BaseNewsPojo baseNewsPojo) {
    GuildNewsPojo guildNewsPojo = baseNewsPojo as GuildNewsPojo;

    return Container(
      height: 40.h,
      padding:
          EdgeInsets.symmetric(horizontal: AppStyles.defaultMarginHorizontal),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: EdgeInsets.all(4.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.h),
                  child: Image.network(
                    guildNewsPojo.guildImageUrl,
                    height: 36.h,
                    width: 36.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(guildNewsPojo.userImageUrl),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.smallMarginHorizontal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  baseNewsPojo.userAlias,
                  style: TextConfigs.semibold14,
                ),
                Row(
                  children: [
                    Text(
                      TimeUtils.getDurationText(baseNewsPojo.createDate),
                      style: TextConfigs.regular12Grey2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppStyles.smallMarginHorizontal),
                      child: Image.asset('assets/icons/ic_dot.png'),
                    ),
                    Text(guildNewsPojo.guildName,
                        style: TextConfigs.regular12Grey2)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDefaultHeader(BaseNewsPojo baseNewsPojo) {
    return Container(
      height: 40.h,
      padding:
          EdgeInsets.symmetric(horizontal: AppStyles.defaultMarginHorizontal),
      child: Row(
        children: [
          SizedBox(
            height: 40.h,
            width: 40.w,
            child: CircleAvatar(
              backgroundImage: NetworkImage(baseNewsPojo.userImageUrl),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.smallMarginHorizontal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  baseNewsPojo.userAlias,
                  style: TextConfigs.semibold14,
                ),
                Text(
                  TimeUtils.getDurationText(baseNewsPojo.createDate),
                  style: TextConfigs.regular12Grey2,
                )
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/ic_horizontal_eclipse.svg'),
        ],
      ),
    );
  }

  Widget _buildBody(BaseNewsPojo baseNewsPojo, BuildContext context) {
    switch (NewsType.fromInt(baseNewsPojo.type)) {
      case NewsType.review:
        return _buildReviewBody(baseNewsPojo);
      default:
        return _buildDefaultBody(baseNewsPojo);
    }
  }

  Widget _buildReviewBody(BaseNewsPojo baseNewsPojo) {
    ReviewNewsPojo reviewNewsPojo = baseNewsPojo as ReviewNewsPojo;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppStyles.defaultMarginHorizontal,
              vertical: AppStyles.smallMarginVertical),
          child: Text(
            reviewNewsPojo.caption,
            textAlign: TextAlign.start,
            style: TextConfigs.regular14,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              reviewNewsPojo.bookImageUrl,
              height: AppStyles.newsBodyHeight,
              width: 128.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: AppStyles.smallMarginHorizontal,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppStyles.smallMarginVertical),
                  child: Text(
                    reviewNewsPojo.bookName,
                    overflow: TextOverflow.ellipsis,
                    style: TextConfigs.bold16,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: AppStyles.defaultMarginVertical),
                  child: Text(
                    'by ${reviewNewsPojo.bookAuthor}',
                    style: TextConfigs.boldItalic12Grey2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: AppStyles.smallMarginVertical),
                  child: SizedBox(
                    width: 200.w,
                    child: Flexible(
                      child: Text(
                        reviewNewsPojo.bookDescription,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextConfigs.regular12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: AppStyles.defaultMarginVertical),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BaseRatingStar(value: baseNewsPojo.bookAvgRating),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppStyles.smallMarginHorizontal),
                          child: Image.asset('assets/icons/ic_dot.png'),
                        ),
                        Text(
                          '${reviewNewsPojo.bookNumberOfRating} ratings',
                          style: TextConfigs.regularItalic12DarkGrey,
                        )
                      ]),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildDefaultBody(BaseNewsPojo baseNewsPojo) {
    var newsPojo;
    if (NewsType.fromInt(baseNewsPojo.type) == NewsType.post) {
      newsPojo = baseNewsPojo as PostNewsPojo;
    } else {
      newsPojo = baseNewsPojo as GuildNewsPojo;
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppStyles.defaultMarginHorizontal,
            vertical: AppStyles.smallMarginVertical),
        child: Text(
          newsPojo.caption,
          textAlign: TextAlign.start,
          style: TextConfigs.regular14,
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: AppStyles.newsBodyHeight,
        child: Image.network(newsPojo.imageUrl, fit: BoxFit.fitWidth),
      ),
    ]);
  }

  Widget _buildFooter(BaseNewsPojo baseNewsPojo) {
    return SizedBox(
      height: 44.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              SizedBox(
                width: 28.w,
                child: Image.asset(
                  'assets/icons/ic_heart.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                "${baseNewsPojo.numberOfLikes}",
                style: TextConfigs.regular14OceanGreen,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 28.w,
                child: Image.asset(
                  'assets/icons/ic_comment.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                "${baseNewsPojo.commentList.length}",
                style: TextConfigs.regular14OceanGreen,
              )
            ],
          )
        ],
      ),
    );
  }
}
