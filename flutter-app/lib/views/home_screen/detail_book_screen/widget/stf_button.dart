import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:book_net/views/home_screen/edit_profile_screen/widget/drop_down.dart';
import 'package:flutter/cupertino.dart';

class StatefulButton extends StatefulWidget {
  StatefulButton({
    super.key,
    required this.isAdded,
  });

  bool isAdded;

  @override
  State<StatefulButton> createState() => _StatefulButtonState();
}

class _StatefulButtonState extends State<StatefulButton> {
  String type = 'Done';

  @override
  Widget build(BuildContext context) {
    onPressedAddBookshelf() {
      setState(() {
        widget.isAdded = true;
      });
    }

    return !widget.isAdded
        ? RaisedGradientButton(
            child: Text(
              'Add to bookshelf',
              style: TextConfigs.medium16
                  .copyWith(color: AppColors.oceanGreenColor),
            ),
            gradient: const LinearGradient(
              colors: <Color>[
                AppColors.teaGreenColor,
                AppColors.lightGrayColor,
              ],
            ),
            onPressed: onPressedAddBookshelf,
          )
        : DropDown(
            value: type,
            items: const [
              'Finished',
              'In progress',
              'To read',
            ],
            callback: (newValue) {
              type = newValue;
            },
          );
  }
}
