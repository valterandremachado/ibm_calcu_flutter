import 'package:flutter/material.dart';

// ReusableCard Widget
class ReusableCard extends StatelessWidget {
  final Color? cardColor;
  final Widget? cardChild;
  final Function()? cardOnTap;

  ReusableCard({this.cardColor, this.cardChild, this.cardOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardOnTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        height: 200,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
