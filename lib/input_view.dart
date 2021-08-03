import 'package:flutter/material.dart';

class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<InputView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Colors.red),
                  ),
                  Expanded(
                    child: ReusableCard(Colors.red),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(Colors.black),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Colors.red),
                  ),
                  Expanded(
                    child: ReusableCard(Colors.red),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ReusableCard Widget
class ReusableCard extends StatelessWidget {
  final Color cardColor;
  ReusableCard(this.cardColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
