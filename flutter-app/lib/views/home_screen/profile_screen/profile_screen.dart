import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/base_widgets/number_with_text/number_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "ProfileScreen";
  const ProfileScreen({Key? key}) : super(key: key);

  void launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'myOwnEmailAddress@gmail.com',
        queryParameters: {
          'subject': 'Default Subject',
          'body': 'Default body'
        });
    String url = params.toString();
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print('Could not launch $url');
    }
  }

  onPressedViewBookshelf() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 48.h),
        child: const Bars(
          title: 'Profile',
          leading: SizedBox(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: const NetworkImage(
                                'https://www.woolha.com/media/2020/03/eevee.png'),
                            radius: 32.r,
                            foregroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width -
                                64.w -
                                48.w -
                                20.w,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'review',
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'review',
                                  ),
                                  flex: 1,
                                ),
                                Flexible(
                                  child: NumberWithText(
                                    number: 33,
                                    text: 'review',
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'William Ng',
                      style: TextConfigs.bold16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: TextButton(
                  child: Text('bc@gmail.com',
                      style: TextConfigs.regular12OceanGreen),
                  onPressed: launchEmailSubmission,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.h, 4.h, 24.h, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bo cua su that',
                      style: TextConfigs.regular12Gray,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24.h, 4.h, 24.h, 8.h),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: 21,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3.0),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 16.h),
                child: RaisedGradientButton(
                  child: Text(
                    'View William’s bookshelf',
                    style: TextConfigs.medium16
                        .copyWith(color: AppColors.oceanGreenColor),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      AppColors.teaGreenColor,
                      AppColors.lightGrayColor,
                    ],
                  ),
                  onPressed: onPressedViewBookshelf,
                ),
              ),
              const Divider(),
            ]),
      ),
    );
  }
}
