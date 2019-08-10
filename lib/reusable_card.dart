import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Function onPress;
  final Color colorPicked;

  ReusableCard({@required this.cardChild, this.onPress, this.colorPicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: colorPicked,
        ),
      ),
    );
  }
}
