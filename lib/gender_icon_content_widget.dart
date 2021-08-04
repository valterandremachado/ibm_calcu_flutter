// Reusable GenderIconContent Widget
import 'package:flutter/material.dart';
import 'constants.dart';

class GenderIconContent extends StatelessWidget {
  final String title;
  final IconData? genderIcon;

  GenderIconContent(this.title, {this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: kLabelStyle,
        )
      ],
    );
  }
}
