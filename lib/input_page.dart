import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_button.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
              child: Container(
                color: Color(0xFF070918),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: IconContent(
                        iconSelected: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      colorPicked: selectedGender == GenderType.male
                          ? kActiveColor
                          : kInactiveColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: IconContent(
                        iconSelected: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      colorPicked: selectedGender == GenderType.female
                          ? kActiveColor
                          : kInactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'HEIGHT',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        onPress: null,
                        colorPicked: kInactiveColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: null,
                      onPress: null,
                      colorPicked: kInactiveColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: null,
                      onPress: null,
                      colorPicked: kInactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE YOUR BMI',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
