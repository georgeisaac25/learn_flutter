import 'package:flutter/material.dart';

class BulbImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/bulb.png'),
      alignment: Alignment.center,
      height: 100,
      width: 100,);;
  }
}