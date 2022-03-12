import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'resueableCard.dart';
import 'cardContent.dart';
import 'Constents/constents.dart';

enum GenderEnum {
  male,
  female,
}
int heightValue = 150;
int weight = 45;
int age = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum? SelectedGender;
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
                    onPress: () {
                      setState(() {
                        SelectedGender = GenderEnum.male;
                      });
                    },
                    //k is used to represent Constents that are created by developer
                    colour: SelectedGender == GenderEnum.male
                        ? kMyActiveCardColor
                        : kMyInActiveCardColor,
                    cardChild: myCardData(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: reuseableCard(
                    onPress: () {
                      setState(() {
                        SelectedGender = GenderEnum.female;
                      });
                    },
                    cardChild: myCardData(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                    //k is used to represent Constents that are created by developer
                    colour: SelectedGender == GenderEnum.female
                        ? kMyActiveCardColor
                        : kMyInActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reuseableCard(
              colour: kMyActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heightValue.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 23.0),
                        overlayColor: Color(0X2941C0F7)),
                    child: Slider(
                      min: kMinimumValue,
                      max: kMaximumValue,
                      value: heightValue.toDouble(),
                      // activeColor: kBottomBarColor,
                      // inactiveColor: Colors.white,
                      onChanged: (double heightOnChange) {
                        setState(() {
                          heightValue = heightOnChange.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuseableCard(
                    //k is used to represent Constents that are created by developer
                    colour: kMyActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCustomButton(
                              ico: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundCustomButton(
                              ico: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: reuseableCard(
                    //k is used to represent Constents that are created by developer
                    colour: kMyActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundCustomButton(
                              ico: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundCustomButton(
                              ico: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            width: double.infinity,
            height: kBottomBarHeight,
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
