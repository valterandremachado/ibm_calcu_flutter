import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/reusable_card_widget.dart';
import 'gender_icon_content_widget.dart';

// Initiate constants here
const double bottomContainerHeight = 80.0;
const Color defaultCardColor = Color(0xFF006064);
const Color bottomContainerColor = Colors.purple;

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
                    child: ReusableCard(
                      cardColor: defaultCardColor,
                      cardChild: GenderIconContent(
                        'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: defaultCardColor,
                      cardChild: GenderIconContent(
                        'FAMALE',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: defaultCardColor,
                cardChild: null,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: defaultCardColor,
                      cardChild: null,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: defaultCardColor,
                      cardChild: null,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              height: bottomContainerHeight,
              decoration: BoxDecoration(
                  color: bottomContainerColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}




