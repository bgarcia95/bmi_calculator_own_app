import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final bmiResultNumber;
  final bmiResultText;
  final bmiInterpretation;

  ResultsPage(
      {@required this.bmiResultNumber,
      this.bmiResultText,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorPicked: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiResultText,
                    style: kGreenResultLabel,
                  ),
                  Text(
                    bmiResultNumber,
                    style: kBMIResultNumberTextStyle,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: kBMIRangeTextStyle,
                  ),
                  Text(
                    '18,5 - 25 kg/m2',
                    style: kBMIBodyTextStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kBMIBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE YOUR BMI',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
