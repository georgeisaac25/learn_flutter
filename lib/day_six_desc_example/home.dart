import 'package:flutter/material.dart';

import 'description.dart';

void main() => runApp(HomeWidget());

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Desc"),
          backgroundColor: Colors.amberAccent,
        ),
        body: DescriptionWidget(),
      ),
    );
  }
}