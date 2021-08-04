import 'package:flutter/material.dart';

// ReusableCard Widget
class ReusableCard extends StatelessWidget {
  final Color? cardColor;
  final Widget? cardChild;

  ReusableCard({this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
