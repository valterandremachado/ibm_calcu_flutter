import 'package:flutter/material.dart';
import 'input_view.dart';

void main() {
  runApp(BMICalculatorApp());
}

// Primary view
class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.cyan[700],
        scaffoldBackgroundColor: Colors.cyan[500],
      ),
      home: InputView(),
    );
  }
}


