import 'package:book_net/views/base_widgets/bar/bar.dart';
import 'package:book_net/views/base_widgets/number_with_text/number_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "ProfileScreen";
  const ProfileScreen({Key? key}) : super(key: key);

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
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 8.h),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: const NetworkImage(
                        'https://www.woolha.com/media/2020/03/eevee.png'),
                    radius: 34.r,
                    foregroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width - 68.w - 48.w - 20.w,
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
          ),
        ]),
      ),
    );
  }
}
