import 'package:flutter/material.dart';

void main() => runApp(FourthWidget());

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Isaac",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.black, fontSize: 40.0),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: FirstWidget(),
    );
  }
}

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("day_one"),
      ),
      body: SecondWidget(),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}

class FourthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "OnAppSelectionAndroid",
      debugShowCheckedModeBanner: false,
      home: ThirdWidget(),
    );
  }
}
