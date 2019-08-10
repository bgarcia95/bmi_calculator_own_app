import 'package:flutter/material.dart';

class RoundMaterialButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundMaterialButton({@required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 0.0,
      fillColor: Color(0xFF1C1F32),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}
