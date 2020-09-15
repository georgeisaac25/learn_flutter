import 'package:flutter/material.dart';

class AnimalDesc extends StatelessWidget {
  final String name;

  AnimalDesc.doSet(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,textAlign: TextAlign.center,
    );
  }
}
