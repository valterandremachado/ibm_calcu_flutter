import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components/custom_round_btn.dart';
import 'package:bmi_calculator/views/results_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constants.dart';
import 'package:bmi_calculator/components/gender_icon_content_widget.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';

enum Gender { male, female }

class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<InputView> {
  Gender? selectedGender;
  int userHeight = 190;
  int userWeight = 40;
  int userAge = 1;

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
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelStyle,
                          ),
                          Text(
                            userWeight.toString(),
                            style: kCardNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    if (userWeight > 3) {
                                      userWeight--;
                                    }
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    userWeight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: kSelectedCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelStyle,
                          ),
                          Text(
                            userAge.toString(),
                            style: kCardNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    if (userAge > 1) {
                                      userAge--;
                                    }
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    userAge++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton('Calculate BMI', onTap: () {
              BMICalculator calc = BMICalculator(userHeight, userWeight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsView(
                          calc.calculateBMI(),
                          calc.getResult(),
                          calc.getInterpretation(),
                        )),
              );
            }),
          ],
        ),
      ),
    );
  }
}
