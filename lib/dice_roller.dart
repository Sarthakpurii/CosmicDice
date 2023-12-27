import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNum = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(
      () {
        diceNum = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Cosmic Dice',
          style: TextStyle(fontFamily: 'Hater', fontSize: 55, shadows: [
            Shadow(color: Colors.deepPurple, offset: Offset(3, 0))
          ]),
        ),
        const SizedBox(height: 30,),
        Image.asset('assets/dice-$diceNum.png', width: 250),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: const ButtonStyle(
                // padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                elevation: MaterialStatePropertyAll(10),
                animationDuration: Duration(seconds: 2),
                minimumSize: MaterialStatePropertyAll(Size(125, 50)),
                backgroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 201, 237, 36)),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                shadowColor: MaterialStatePropertyAll(Colors.deepPurple)),
            child: const Text('Roll it!',
                style: TextStyle(fontFamily: 'Blatter', fontSize: 22)))
      ],
    );
  }
}
