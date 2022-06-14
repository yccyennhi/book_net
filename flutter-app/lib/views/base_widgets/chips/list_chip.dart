import 'package:book_net/views/base_widgets/chips/custom_chip.dart';
import 'package:flutter/material.dart';

class ListChip extends StatefulWidget {
  final List<String> list;

  const ListChip({super.key, required this.list});

  @override
  _ListChipState createState() => _ListChipState();
}

class _ListChipState extends State<ListChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.list) {
      choices.add(Container(
          padding: const EdgeInsets.all(2.0), child: CustomChip(text: item)));
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
