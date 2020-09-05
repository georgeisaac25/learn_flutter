import 'package:flutter/material.dart';

void main() => runApp(StartWidget());

class StartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second_day",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second"),
        ),
        body: InsideScreen(),
      ),
    );
  }
}

class InsideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          getText(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.lightGreenAccent, fontSize: 40.0),
        ),
      ),
    );
  }

  String getText() {
    return "Moses";
  }
}
