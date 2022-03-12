import 'dart:ui';
import '../Components/bottomButton.dart';
import 'package:bmi/Constents/constents.dart';
import '../Components/resueableCard.dart';
import 'package:flutter/material.dart';

import 'inputPage.dart';

class myResultPage extends StatelessWidget {
  myResultPage(
      {required this.result,
      required this.resultValue,
      required this.resultGuide});
  final String result;
  final String resultValue;
  final String resultGuide;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'YOUR RESULT',
                style: kResultPageTopStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reuseableCard(
              colour: kMyActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: kResultPageResult,
                  ),
                  Text(
                    resultValue,
                    style: kResultNumber,
                  ),
                  Text(
                    resultGuide,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          MyBottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            myTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
