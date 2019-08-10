import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPress;

  BottomButton({this.buttonTitle, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonTitle,
          ),
        ),
        color: kBottomButtonColor,
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
    );
  }
}
