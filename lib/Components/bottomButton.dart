import 'package:flutter/material.dart';
import '../Constents/constents.dart';

class MyBottomButton extends StatelessWidget {
  MyBottomButton({required this.myTitle, required this.onTap});
  final String myTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomBarColor,
        width: double.infinity,
        height: kBottomBarHeight,
        margin: EdgeInsets.only(top: 15.0),
        child: Center(
          child: Text(
            myTitle,
          ),
        ),
      ),
    );
  }
}
