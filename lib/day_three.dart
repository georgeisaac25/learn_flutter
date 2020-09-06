import 'package:flutter/material.dart';
import 'home_three.dart';

void main() => runApp(StartWidget());

class StartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: HomeWidget(),
      ),
    );
  }
}


