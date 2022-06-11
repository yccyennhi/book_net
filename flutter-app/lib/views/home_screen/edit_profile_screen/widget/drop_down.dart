import 'dart:developer';

import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/style_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:book_net/views/base_widgets/button/raised_gradient_button.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({
    Key? key,
    required this.value,
    required this.callback,
    required this.items,
  }) : super(key: key);

  String value;
  final List<String> items;
  final Function(String value) callback;

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
    double height = AppStyles.heightButtonLg;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: RaisedGradientButton(
        height: height,
        onPressed: () {},
        outline: true,
        gradient: const LinearGradient(
          colors: <Color>[
            AppColors.lightestSkyColor,
            AppColors.lightestSkyColor,
          ],
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            onTap: () => log('on clicked'),
            selectedItemBuilder: (context) => widget.items
                .map<Widget>(
                  (e) => Center(
                    child: Text(
                      widget.value,
                      style: TextConfigs.medium16
                          .copyWith(color: AppColors.oceanGreenColor),
                    ),
                  ),
                )
                .toList(),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppStyles.radiusXss)),
            value: dropdownValue,
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
              color: AppColors.oceanGreenColor,
            ),
            elevation: 16,
            alignment: Alignment.bottomCenter,
            style: const TextStyle(color: AppColors.oceanGreenColor),
            isExpanded: true,
            underline: Container(
              height: 2,
              color: AppColors.oceanGreenColor,
            ),
            onChanged: (String? newValue) {
              setState(() {
                widget.value = newValue!;
                dropdownValue = newValue;
              });
              widget.callback(newValue!);
            },
            items: widget.items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextConfigs.medium16
                      .copyWith(color: AppColors.oceanGreenColor),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
