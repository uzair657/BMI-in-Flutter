import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'resueableCard.dart';
import 'cardContent.dart';

const myActiveCardColor = Color(0xFF1D1E33);
const bottomBarHeight = 80.0;
const bottomBarColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuseableCard(
                    colour: myActiveCardColor,
                    cardChild: myCardData(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: reuseableCard(
                    cardChild: myCardData(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                    colour: myActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reuseableCard(
              colour: myActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuseableCard(
                    colour: myActiveCardColor,
                  ),
                ),
                Expanded(
                  child: reuseableCard(
                    colour: myActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            width: double.infinity,
            height: bottomBarHeight,
            margin: EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
