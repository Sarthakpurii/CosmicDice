
import 'dart:math';
import 'package:flutter/material.dart';


final randomizer=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var diceNum=randomizer.nextInt(6)+1;

  void rollDice(){
    setState(() {
      diceNum=randomizer.nextInt(6)+1;
    },);
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/dice-$diceNum.png', width: 250),
            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: rollDice,
              
              style: const ButtonStyle(
                // padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                animationDuration: Duration(seconds: 2),
                minimumSize: MaterialStatePropertyAll(Size(125, 50)),
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 201, 237, 36)),
                foregroundColor: MaterialStatePropertyAll(Colors.black)
              ),
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                fontFamily: 'Blatter',
                fontSize: 22)))
            ],);
  }
}