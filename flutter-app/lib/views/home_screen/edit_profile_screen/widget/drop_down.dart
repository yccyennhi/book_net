import 'package:book_net/configs/color_configs.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({
    Key? key,
    required this.value,
    required this.callback,
  }) : super(key: key);

  final String value;
  final Function(int value) callback;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = '';

  @override
  void initState() {
    // TODO: implement initState
    dropdownValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down_rounded,
        color: AppColors.oceanGreenColor,
      ),
      elevation: 16,
      style: const TextStyle(color: AppColors.oceanGreenColor),
      isExpanded: true,
      underline: Container(
        height: 2,
        color: AppColors.oceanGreenColor,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        int callbackValue = newValue! == 'Male'
            ? 0
            : newValue == 'Female'
                ? 1
                : 2;
        widget.callback(callbackValue);
        // widget.callback(newValue!);
      },
      items: <String>['Male', 'Female', 'Unknow']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
