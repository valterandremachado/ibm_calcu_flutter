import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  BottomButton(this.title, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonStyle,
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.all(15),
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
