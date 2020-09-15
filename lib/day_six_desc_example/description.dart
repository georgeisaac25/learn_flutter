import 'package:flutter/material.dart';
import 'package:test_flutter/day_six_desc_example/button_for_change.dart';

import 'animal_desc.dart';
import 'animal_name.dart';
import 'bulb_image.dart';
import 'dart:developer';
class DescriptionWidget extends StatefulWidget {
  @override
  _DescriptionWidgetState createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  int count = 0;
  var list = [
    "Dog",
    "Lion",
    "Tiger",
  ];

  var desc = ["Most loyal", "King of the jungle", "deadly"];

  void _updateCounter() {
    log('data: ${list.length}');
    log('count: ${count}');
    if (count < list.length-1) {
      setState(() {
        count++;
      });
    }
    else{
      setState(() {
        count = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(

        children: <Widget>[
          Text('Knowledge animal'
            , textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0
            ),
          ),
          BulbImage(),
          AnimalName.doSet(list[count]),
          AnimalDesc.doSet(desc[count]),
          ButtonChange(_updateCounter)
        ],
      ),
    );
  }


}