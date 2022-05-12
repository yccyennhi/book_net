import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

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
        color: AppColors.blueColor,
        borderRadius:
            const BorderRadius.all(Radius.circular(AppStyles.radiusMd)),
        child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppStyles.radiusMd),
            ),
            onTap: () {},
            child: Center(
              child: Row(children: <Widget>[
                Image.asset('assets/icons/facebook.png'),
                const SizedBox(width: 8),
                const Text('FACEBOOK',
                    style: TextStyle(color: AppColors.whiteColor))
              ]),
            )),
      ),
    );
  }
}
