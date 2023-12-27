import 'package:flutter/material.dart';
// import 'package:roll_dice/styled_text.dart';


class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorList, {super.key});

  var diceImage='assets/dice-6.png';
  final List<Color> colorList;

  void rollDice(){
  diceImage='assets/dice-4.png';
  }

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(diceImage, width: 250),
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
            ],),
      ),
    );
  }
}
