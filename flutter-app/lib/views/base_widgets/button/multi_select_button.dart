import 'package:book_net/configs/color_configs.dart';
import 'package:book_net/configs/text_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MultiSelectButton extends StatefulWidget {
  final List<String> list;
  final Function(List<String>) onSelectionChanged;
  final int radius;
  final bool outline;
  final List<String> selectedChoices;

  const MultiSelectButton(
      {Key? key,
      required this.list,
      required this.selectedChoices,
      required this.onSelectionChanged,
      this.outline = false,
      this.radius = 48})
      : super(key: key);

  @override
  _MultiSelectButtonState createState() => _MultiSelectButtonState();
}

class _MultiSelectButtonState extends State<MultiSelectButton> {
  // String selectedChoice = "";
  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.list) {
      choices.add(
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ChoiceChip(
                label: SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: Align(alignment: Alignment.center, child: Text(item)),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1,
                        color: widget.outline
                            ? AppColors.lightGrayColor
                            : Colors.transparent),
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.radius.r))),
                selected: widget.selectedChoices.contains(item),
                disabledColor: AppColors.greenLightestColor,
                backgroundColor: !widget.outline
                    ? AppColors.greenLightestColor
                    : Colors.transparent,
                selectedShadowColor: AppColors.greenColor,
                selectedColor: AppColors.skyLightColor,
                labelStyle: TextConfigs.regular16.copyWith(
                  color: widget.selectedChoices.contains(item)
                      ? AppColors.oceanGreenColor
                      : AppColors.darkGrayColor,
                ),
                onSelected: (selected) {
                  setState(() {
                    widget.selectedChoices.contains(item)
                        ? widget.selectedChoices.remove(item)
                        : widget.selectedChoices.add(item);
                    widget.onSelectionChanged(widget.selectedChoices);
                  });
                },
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      );
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _buildChoiceList());
  }
}
