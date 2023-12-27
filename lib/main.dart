import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 191, 86, 226),
        body: GradientContainer(const [ 
                Color.fromARGB(255, 94, 34, 185),
                Color.fromARGB(255, 32, 139, 220)]),
      ),
    ),
  );
}


