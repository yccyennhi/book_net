import 'package:book_net/views/home_screen/edit_profile_screen/widget/drop_down.dart';
import 'package:flutter/cupertino.dart';

class DropDownBox extends StatelessWidget {
  DropDownBox({
    super.key,
    required this.isAdded,
    required this.type,
    required this.onChangeType,
  });
  bool isAdded;
  String type;
  Function onChangeType;

  @override
  Widget build(BuildContext context) {
    // String type = 'Finished';

    return isAdded
        ? DropDown(
            value: type,
            items: const [
              'Finished',
              'In progress',
              'To read',
            ],
            callback: (newValue) {
              onChangeType(newValue);
            },
          )
        : const SizedBox.shrink();
  }
}
