import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 191, 86, 226),
        body: GradientContainer([ 
                Color.fromARGB(255, 94, 34, 185),
                Color.fromARGB(255, 32, 139, 220)]),
      ),
    ),
  );
}


