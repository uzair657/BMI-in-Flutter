import 'package:flutter/material.dart';

///Custom Round Buttons
class RoundCustomButton extends StatelessWidget {
  RoundCustomButton({this.ico, this.onPressed});
  final IconData? ico;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(ico),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
