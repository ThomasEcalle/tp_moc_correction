import 'package:flutter/material.dart';
import 'package:tp_moc/choice_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.selectedChoices = const [],
  }) : super(key: key);

  final List<String> selectedChoices;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vos choix :',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              _buildContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (selectedChoices.isEmpty) {
      return Text(
        'Cliquez sur vos choix !',
        style: Theme.of(context).textTheme.displaySmall,
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: selectedChoices.map((choice) => ChoiceItem(text: choice)).toList(),
    );
  }
}
