import 'package:flutter/material.dart';
import 'package:tp_moc/choice_item.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.choices,
    required this.onChoiceSelected,
    this.selectedChoices = const [],
  }) : super(key: key);

  final List<String> choices;
  final List<String> selectedChoices;
  final Function(String choice) onChoiceSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: _buildChoices(),
        ),
      ),
    );
  }

  List<Widget> _buildChoices() {
    return choices.map((choice) {
      return ChoiceItem(
        text: choice,
        isSelected: selectedChoices.contains(choice),
        onTap: () => _onChoiceSelected(choice),
      );
    }).toList();
  }

  void _onChoiceSelected(String choice) {
    onChoiceSelected(choice);
  }
}
