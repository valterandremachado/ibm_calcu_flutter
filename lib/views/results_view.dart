import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ResultsView extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiDescription;

  ResultsView(this.bmiResult, this.bmiText, this.bmiDescription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                // color: Colors.red,
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kSelectedCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      bmiText.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bmiDescription,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton('Re-Calculate', onTap: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
