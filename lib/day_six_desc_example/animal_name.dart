import 'package:flutter/material.dart';

class AnimalName extends StatelessWidget {
  final String name;

  AnimalName.doSet(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,textAlign: TextAlign.center,
    );
  }
}
