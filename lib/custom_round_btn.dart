import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.cyan[500],
    );
  }
}
