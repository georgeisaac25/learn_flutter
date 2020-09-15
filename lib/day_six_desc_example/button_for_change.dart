import 'package:flutter/material.dart';


class ButtonChange extends StatelessWidget {
  Function onPressedEvent;
  ButtonChange(this.onPressedEvent);


  @override
  Widget build(BuildContext context) {
    return RaisedButton( child: Text(
      "Click me",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontFamily: "Roboto", fontSize: 20, fontWeight: FontWeight.w700),
    ),onPressed: onPressedEvent);
  }
}