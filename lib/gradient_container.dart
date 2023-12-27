import 'package:flutter/material.dart';
// import 'package:roll_dice/styled_text.dart';

void rollDice(){
  // ...
}
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});
  final List<Color> colorList;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorList,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/dice-6.png', width: 250),
            const ElevatedButton(onPressed: rollDice, child: Text('Roll Dice'))
            ]
            
            ),
      ),
    );
  }
}
