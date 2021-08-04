import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card_widget.dart';
import 'constants.dart';
import 'gender_icon_content_widget.dart';

enum Gender { male, female }

class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<InputView> {
  Gender? selectedGender;
  int userHeight = 190;

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
                      cardOnTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardColor: selectedGender == Gender.male
                          ? kSelectedCardColor
                          : kUnselectedCardColor,
                      cardChild: GenderIconContent(
                        'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardOnTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardColor: selectedGender == Gender.female
                          ? kSelectedCardColor
                          : kUnselectedCardColor,
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
                cardColor: kSelectedCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          userHeight.toString(),
                          style: kCardNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24),
                        thumbColor: Colors.purple,
                        activeTrackColor: Colors.white,
                        inactiveTickMarkColor: Colors.cyan[500],
                        overlayColor: Colors.purple.withAlpha(60),
                      ),
                      child: Slider(
                        onChanged: (double newValue) {
                          setState(() {
                            userHeight = newValue.round();
                          });
                        },
                        value: userHeight.toDouble(),
                        min: 120,
                        max: 220,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: kSelectedCardColor,
                      cardChild: null,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: kSelectedCardColor,
                      cardChild: null,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              height: kBottomContainerHeight,
              decoration: BoxDecoration(
                  color: kBottomContainerColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}




