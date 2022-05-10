import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: double.infinity,
      height: AppStyles.heightButtonLg,
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.5),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ]),
      // mainAxisSize: MainAxisSize.max,
      child: Material(
        color: AppColors.whiteColor,
        borderRadius:
            const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
        child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(children: <Widget>[
                Image.asset('assets/icons/google.png'),
                const SizedBox(width: 16),
                Text('GOOGLE',
                    style: TextConfigs.medium14
                        .copyWith(color: AppColors.grey3Color))
              ]),
            )),
      ),
    );
  }
}
