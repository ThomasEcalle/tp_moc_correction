import 'package:flutter/material.dart';

import 'footer.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            displaySmall: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Header(
              selectedChoices: _selectedChoices,
            ),
          ),
          Expanded(
            child: Footer(
              choices: const [
                'Basket',
                'Rugby',
                'Boxe',
                'Échecs',
                'Waterpolo',
                'Gym',
              ],
              onChoiceSelected: _onChoiceSelected,
              selectedChoices: _selectedChoices,
            ),
          ),
        ],
      ),
    );
  }

  void _onChoiceSelected(String choice) {
    print('Choice clicked: $choice');

    setState(() {
      if (_selectedChoices.contains(choice)) {
        _selectedChoices.remove(choice);
      } else {
        _selectedChoices.add(choice);
      }
    });
  }
}
