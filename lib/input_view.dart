import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/reusable_card_widget.dart';
import 'gender_icon_content_widget.dart';

// Initiate constants here
const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Colors.purple;
const Color selectedCardColor = Color(0xFF006064);
const Color unselectedCardColor = Color(0xFF00ACC1);

enum Gender { male, female }

class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<InputView> {
  Gender? selectedGender;
 
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        cardColor: selectedGender == Gender.male
                            ? selectedCardColor
                            : unselectedCardColor,
                        cardChild: GenderIconContent(
                          'MALE',
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        cardColor: selectedGender == Gender.female
                            ? selectedCardColor
                            : unselectedCardColor,
                        cardChild: GenderIconContent(
                          'FAMALE',
                          genderIcon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: selectedCardColor,
                cardChild: null,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: selectedCardColor,
                      cardChild: null,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: selectedCardColor,
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




