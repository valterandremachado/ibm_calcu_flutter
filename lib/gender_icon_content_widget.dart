// Reusable GenderIconContent Widget
import 'package:flutter/material.dart';

// const labelStyle = TextStyle(
//   fontSize: 20,
//   color: Colors.grey.shade300,
// );

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
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[300],
          ),
        )
      ],
    );
  }
}
