import 'package:flutter/material.dart';

class myCardData extends StatelessWidget {
  myCardData({this.cardIcon, this.cardText});
  final IconData? cardIcon;
  final String? cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        Text(
          cardText!,
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
