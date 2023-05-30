import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({
    Key? key,
    required this.text,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
